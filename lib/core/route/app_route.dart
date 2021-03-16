import 'package:get/get.dart';
import 'package:thedartpackage/core/route/route_constant.dart';
import 'package:thedartpackage/module/basic_widget/screen/basic_widget_screen.dart';
import 'package:thedartpackage/module/home/screen/home_screen.dart';
import 'package:thedartpackage/module/introduction/screen/introduction_screen.dart';

class AppRoute {
  static final all = [
    GetPage(name: RouteConstant.home, page: () => HomeScreen()),
    GetPage(name: RouteConstant.day1, page: () => IntroductionScreen()),
    GetPage(name: RouteConstant.day2, page: () => BasicWidgetScreen())
  ];
}
