class AppEnvironment {
  static const _flavor = String.fromEnvironment('CURRENT_FLAVOR', defaultValue: "");

  AppEnvironment._();
  static final AppEnvironment _instance = AppEnvironment._();
  factory AppEnvironment() {
    return _instance;
  }

  static String baseURL;
  static String domain;
  static String schemedeeplink;

  static init() {
    if (_flavor == "prod") {
      baseURL = "https://domain.prod/";
      domain = "domain.prod";
      schemedeeplink = "deeplinkscheme";
    }

    if (_flavor == "dev") {
      baseURL = "https://domain.dev/";
      domain = "domain.dev";
      schemedeeplink = "deeplinkschemedev";
    }

    if (_flavor == "staging") {
      baseURL = "http://localhost:2123/";
      domain = "domain.dev";
      schemedeeplink = "deeplinkschemestaging";
    }
  }
}
