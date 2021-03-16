import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:thedartpackage/core/globalcontroller/app_global_controller.dart';
import 'package:thedartpackage/core/environment/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:thedartpackage/core/route/route_constant.dart';
import 'package:thedartpackage/core/style/app_color.dart';
import 'package:thedartpackage/core/style/app_theme.dart';
import 'package:thedartpackage/module/home/screen/home_screen.dart';

import 'core/route/app_route.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Necessary to initiate Environment Variable
  AppEnvironment.init();
  GlobalController.init();

  //Make Status Bar Transparent & Lock-Screen to potrait
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors.main));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Workshop',
      theme: AppTheme.main,
      getPages: AppRoute.all,
      initialRoute: RouteConstant.home,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
