library ui_extensions;

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart' as collection;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../intl/i18n.dart';

extension NumberUtils on num {
  static const int _width = 375; // reference width from designs
  // ignore: unused_field
  static const int _height = 800;

  double responsive(BuildContext context) {
    final MediaQueryData _data = MediaQuery.of(context);
    final double scaleFactor = _data.size.shortestSide / _width;
    final double responsive = this * scaleFactor;
    return responsive;
  }
}

extension TextStyleUtils on TextStyle {
  TextStyle get responsive => copyWith(fontSize: fontSize);

  Widget withText(String text, {TextAlign align = TextAlign.center}) => Text(
        text,
        textAlign: align,
        style: this,
      );

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle withColor(Color color) => copyWith(color: color);

  TextStyle withSize(double size) => copyWith(fontSize: size);
}

extension ListWidgetUtils on List<Widget> {
  List<Widget> mapPadding({
    required EdgeInsets padding,
  }) {
    assert(padding != null);
    return map((Widget child) {
      return Padding(
        padding: padding,
        child: child,
      );
    }).toList();
  }

  List<Widget> mapWithDivider({
    required EdgeInsets padding,
  }) {
    assert(padding != null);
    return map((Widget child) {
      return Padding(
        padding: padding,
        child: Column(children: <Widget>[
          child,
          Divider(
            thickness: 0.5,
            color: Colors.black.withOpacity(0.25),
          ),
        ]),
      );
    }).toList();
  }
}

extension IterableUtils<T> on Iterable<T> {
  List<Widget> mapToWidget(Widget Function(T) mapper) {
    assert(mapper != null);
    return map<Widget>(mapper).toList();
  }
}

extension ListUtils<T> on List<T> {
  Map<S, List<T>> groupBy<S>(S Function(T) mapper) {
    return collection.groupBy<T, S>(this, mapper);
  }
}

extension BuiltListUtils<T> on BuiltList<T> {
  List<Widget> mapToWidget(Widget Function(T) mapper) {
    assert(mapper != null);
    return map<Widget>(mapper).toList();
  }

  Map<S, List<T>> groupBy<S>(S Function(T) mapper) {
    return collection.groupBy<T, S>(this, mapper);
  }
}

extension SizeUtils on Size {
  Size responsive(BuildContext context) => Size(
        width.responsive(context),
        height.responsive(context),
      );
}

extension BuildContextUtils on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get mediaSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);

  bool get isDarkTheme => theme.brightness == Brightness.dark;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  TextTheme get accentTextTheme => theme.accentTextTheme;

  TextTheme get textTheme => theme.textTheme;

  ButtonThemeData get buttonTheme => ButtonTheme.of(this);

  IconThemeData get iconTheme => IconTheme.of(this);

  AppStrings get strings => AppLocalizations.of(this);

  ModalRoute<T>? getModalRoute<T>() => ModalRoute.of<T>(this);

  NavigatorState get rootNavigator => Navigator.of(this, rootNavigator: true);

  NavigatorState get navigator => Navigator.of(this);

  ScaffoldState get scaffold => Scaffold.of(this);

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}

extension ErrorUtils on BuildContext {
  Future<void> handleError(Object error, StackTrace stackTrace) async {
    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(
          error.toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: theme.errorColor,
      ),
    );
  }

  Future<void> handleErrorDialog(Object error, StackTrace stackTrace) async {
    return showDialog<void>(
      context: this,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Oops!'),
          content: Text('$error\n$stackTrace'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () => navigator.pop(),
            ),
          ],
        );
      },
    );
  }
}

extension DateExtensions on DateTime? {
  String formatYMMM() {
    if (this == null) {
      return '';
    }
    return DateFormat.yMMM().format(this!);
  }

  String formatYMMMM() {
    if (this == null) {
      return '';
    }
    return DateFormat.yMMMM().format(this!);
  }

  String formatMMDDYYYY() {
    if (this == null) {
      return '';
    }
    return DateFormat.yMMMd().format(this!);
  }
}
