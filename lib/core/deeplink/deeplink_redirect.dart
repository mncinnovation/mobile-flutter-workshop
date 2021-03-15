import 'package:flutter/foundation.dart';

class DeepLinkRedirect {
  static fromUri(String uri) async {
    String link = uri;

    final slugs = Uri.parse(link).pathSegments;
    debugPrint(slugs.toString());

    /// Usualy navigate to named route
  }
}
