class Helper {
  static dynamic catchError(
    dynamic exception,
    StackTrace? stackTrace,
  ) {
    print('Error:\n${exception.toString()}');
    print('StackTrace:\n${stackTrace.toString()}');
  }
}
