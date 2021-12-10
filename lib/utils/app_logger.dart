import 'package:logger/logger.dart';

class _AppLogger {
  static final _AppLogger _logger = _AppLogger();
  final Logger _log = Logger();

  void d(dynamic message) => _log.d(message);

  void i(dynamic message) => _log.i(message);

  void e(dynamic message) => _log.e(message);
}

extension LoggerUtils on Object {
  _AppLogger get log => _AppLogger._logger;
}
