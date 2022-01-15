class Env {
  static Env? _instance;
  Env._() : super();

  static Env? get instance => _instance ??= Env._();

  late String baseUrl;

  initEnv() {
    baseUrl = "https://itunes.apple.com";
  }
}
