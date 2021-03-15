import 'package:thedartpackage/core/deeplink/deeplink_redirect.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:uni_links/uni_links.dart';

class DeeplinkHandler {
  static void initDynamicLinks() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // It Handle On Resume
    String link = await getInitialLink();
    if (link != null) DeepLinkRedirect.fromUri(link);

    try {
      getUriLinksStream().listen(
        (uri) {
          if (uri != null) {
            DeepLinkRedirect.fromUri(uri.toString());
          }
        },
      );
      // Parse the link and warn the user, if it is not correct,
      // but keep in mind it could be `null`.
    } on PlatformException catch (e) {
      debugPrint(e.toString());
      // Handle exception by warning the user their action did not succeed
      // return?
    }
  }
}
