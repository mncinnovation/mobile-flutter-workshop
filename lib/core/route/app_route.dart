import 'package:get/get.dart';
import 'package:thedartpackage/core/route/route_constant.dart';
import 'package:thedartpackage/module/basic_widget/screen/basic_widget_screen.dart';
import 'package:thedartpackage/module/home/screen/home_screen.dart';
import 'package:thedartpackage/module/introduction/screen/introduction_screen.dart';
import 'package:thedartpackage/module/layout_widget/screen/layout_widget_screen.dart';
import 'package:thedartpackage/module/state_management/screen/state_management_screen.dart';

class AppRoute {
  static final all = [
    GetPage(name: RouteConstant.home, page: () => HomeScreen()),
    GetPage(
        name: RouteConstant.day1,
        page: () => IntroductionScreen(),
        transition: Transition.zoom),
    GetPage(
        name: RouteConstant.day2,
        page: () => BasicWidgetScreen(),
        transition: Transition.zoom),
    GetPage(
        name: RouteConstant.day3,
        page: () => LayoutWidgetScreen(),
        transition: Transition.zoom),
    GetPage(
        name: RouteConstant.day4,
        page: () => StateManagementScreen(),
        transition: Transition.zoom),
  ];
}
