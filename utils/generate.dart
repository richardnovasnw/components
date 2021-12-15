import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/streams.dart';

Directory _current = Directory.current;
bool _isGenerating = false;
final String intlPath = '${_current.parent.path}/lib/intl';
final String jsonPath = '$intlPath/json';

class LocaleGenerator {
  LocaleGenerator(this.json);

  final Map<String, String>? json;
  final DartEmitter emitter = DartEmitter();
  final DartFormatter formatter = DartFormatter();

  Future<void> buildAndGenerateLocaleClass(
      {bool abstract = true, String suffix = ''}) async {
    final ListBuilder<Method> methodBuilder = ListBuilder<Method>(<Method>[]);
    json!.forEach((String k, String v) {
      methodBuilder.add(_buildMethodFor(k, v, abstract: abstract));
    });
    final Class intlLocaleClass = Class((ClassBuilder b) {
      b
        ..name = 'AppStrings${suffix.toUpperCase()}'
        ..methods = methodBuilder
        ..abstract = abstract
        ..extend = abstract ? null : refer('AppStrings')
        ..constructors = ListBuilder<Constructor>(<Constructor>[]);
    });
    final String code =
        // ignore: leading_newlines_in_multiline_strings
        '''// @dart = 2.12
${abstract ? '' : "import 'app_strings.g.dart';"}
${intlLocaleClass.accept(emitter).toString()}''';
    File('$intlPath/app_strings${(suffix.isNotEmpty) ? '_$suffix' : ''}.g.dart')
        .writeAsStringSync(formatter.format(code));
  }

  Method _buildMethodFor(String key, String value, {bool abstract = false}) {
    final List<String> args = <String>[];
    final List<String> argNames = <String>[];
    final RegExp regExp = RegExp(r'({\w+})');
    String strippedValue = jsonEncode(value);
    if (strippedValue.contains(r'$')) {
      strippedValue = strippedValue.replaceAll(r'$', r'\$');
    }
    if (regExp.hasMatch(strippedValue)) {
      for (final Match m in regExp.allMatches(strippedValue).toList()) {
        final String arg = m.group(0)!;
        args.add(arg);
        argNames.add(arg.substring(1, arg.length - 1));
      }
      for (final String a in args) {
        strippedValue =
            strippedValue.replaceAll(a, '\$${a.substring(1, a.length - 1)}');
      }
    }

    String code = '';
    if (!abstract) {
      code = 'return $strippedValue;';
    }

    final Method method = Method((MethodBuilder b) {
      b
        ..name = key
        ..type = argNames.isEmpty ? MethodType.getter : null
        ..returns = refer('String')
        ..requiredParameters = ListBuilder<Parameter>(argNames.map((String s) {
          return Parameter((ParameterBuilder b) {
            b
              ..name = s
              ..type = refer('dynamic');
          });
        }).toList());
      if (!abstract) {
        b
          ..body = Code(code)
          ..annotations = ListBuilder<Expression>(<Expression>[
            const CodeExpression(Code('override')),
          ]);
      }
    });

    return method;
  }
}

Map<String, String>? _getJsonLocaleFor(String locale) {
  return (jsonDecode(File('$jsonPath/intl_$locale.json').readAsStringSync())
          as Map<String, dynamic>)
      .cast<String, String>();
}

Future<void> _generateIntlFromJson() async {
  print('\nGenerating locale classes...');
  final Map<String, String>? _englishJson = _getJsonLocaleFor('en');
  await LocaleGenerator(_englishJson).buildAndGenerateLocaleClass();
  final List<FileSystemEntity> list = Directory(jsonPath).listSync();
  for (final FileSystemEntity entity in list) {
    final String locale = entity.path.split('_').last.split('.').first;
    print('Generating locale classes for $locale...');
    final Map<String, String>? _json = _getJsonLocaleFor(locale);
    await LocaleGenerator(_json).buildAndGenerateLocaleClass(
      abstract: false,
      suffix: locale,
    );
  }
  print('Success!\n');
}

Future<void> _onFileSaved(FileSystemEvent? event) async {
  if (_isGenerating) {
    return;
  }
  _isGenerating = true;
  try {
    await _generateIntlFromJson();
  } catch (e) {
    print(e);
  }
  _isGenerating = false;
}

Future<void> main(List<String>? args) async {
  args ??= <String>[];
  late StreamSubscription<FileSystemEvent> _subscription;
  if (args.contains('--watch')) {
    // ignore: avoid_print
    print('Watching...');
    final Directory _directory = Directory(jsonPath);
    _subscription =
        _directory.watch(events: FileSystemEvent.modify).debounce((_) {
      return TimerStream<bool>(true, const Duration(milliseconds: 600));
    }).listen(_onFileSaved)
          ..onError((Object e, StackTrace s) {
            // ignore: avoid_print
            print('Unhandled Error: $e');
            _subscription.cancel();
          });
  }
  await _onFileSaved(null);
}
