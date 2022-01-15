import 'package:logging/logging.dart';

class Log {
  static const String LOGGER_NAME = "Logger";
  static late Logger _instance;
  static void init() {
    Logger.root.level = Level.ALL;

    Logger.root.onRecord.listen((event) {
      print("${event.level.name}: ${event.message}");
    });

    _instance = Logger(LOGGER_NAME);
  }

  static void info([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.info('$tag - $message', error, stackTrace);

  static void warning([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.warning('$tag - $message', error, stackTrace);

  static void config([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.config('$tag - $message', error, stackTrace);

  static void fine([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.fine('$tag - $message', error, stackTrace);

  static void finer([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.finer('$tag - $message', error, stackTrace);

  static void finest({tag, message, Object? error, StackTrace? stackTrace}) =>
      _instance.finest('$tag - $message', error, stackTrace);

  static void severe([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.severe('$tag - $message', error, stackTrace);

  static void shout([tag, message, Object? error, StackTrace? stackTrace]) =>
      _instance.shout('$tag - $message', error, stackTrace);
}
