import 'package:get/get.dart';
import 'package:thedartpackage/core/style/theme_controller.dart';

class GlobalController {
  static init() {
    Get.put(ThemeController(), permanent: true);
  }
}
