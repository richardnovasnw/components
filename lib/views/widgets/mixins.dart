import '../../ui.dart';
import 'app_progress_indicator.dart';
import 'extensions.dart';

mixin StateMixin<T extends StatefulWidget> on State<T> {
  GlobalKey<ScaffoldState>? _scaffoldKey;

  GlobalKey? get scaffoldKey {
    _scaffoldKey ??= GlobalKey();
    return _scaffoldKey;
  }

  Future<void> showSnack(String text) async {
    context.scaffoldMessenger.showSnackBar(SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 2),
    ));
  }

  bool _loading = false;

  bool get loading => _loading;

  void setLoading() {
    if (mounted) {
      setState(() {
        _loading = true;
      });
    }
  }

  void resetLoading() {
    if (mounted) {
      setState(() {
        _loading = false;
      });
    }
  }

  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }
}

mixin FormMixin<T extends StatefulWidget> on State<T> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool validateForm() => formKey.currentState!.validate();

  void saveForm() => formKey.currentState!.save();

  void resetForm() => formKey.currentState!.reset();
}

mixin FutureMixin<S extends StatefulWidget, T> on State<S> {
  Future<T>? _future;

  @mustCallSuper
  @override
  void initState() {
    super.initState();
    _future = getData();
  }

  Future<T> getData() => Future<T>.value();

  Future<void> refresh() {
    return getData().then((T value) {
      return _setFuture(Future<T>.value(value));
    }).catchError((Object e, StackTrace s) {
      _setFuture(Future<T>.error(e, s));
    });
  }

  void _setFuture(Future<T> f) {
    _future = f;
    if (mounted) {
      setState(() {});
    }
  }

  Widget errorBuilder(
    BuildContext context,
    Object? error,
    StackTrace? stackTrace,
  ) {
    return ElevatedButton(
      onPressed: refresh,
      child: Text(context.strings!.retry),
    );
  }

  Widget progressBuilder(BuildContext context) {
    return const AppProgressIndicator();
  }

  Widget dataBuilder(BuildContext context, T? data) {
    return Text('$data');
  }

  @mustCallSuper
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: _future,
      builder: (BuildContext context, AsyncSnapshot<T> snap) {
        if (snap.connectionState != ConnectionState.done) {
          return progressBuilder(context);
        }

        if (snap.hasError) {
          return errorBuilder(context, snap.error, snap.stackTrace);
        }

        return dataBuilder(context, snap.data);
      },
    );
  }
}
