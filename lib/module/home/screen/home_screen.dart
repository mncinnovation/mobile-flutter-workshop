import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:thedartpackage/core/route/route_constant.dart';
import 'package:thedartpackage/module/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (HomeController controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: ListView(
              children: <Widget>[
                LottieBuilder.asset(
                    'assets/img/10071-halloween-cute-witch-flying.json'),
                Text(
                  'Flutter Workshop',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => Get.toNamed(RouteConstant.day1),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10))),
                        child: Text(
                          '[1st] Flutter introduction',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => Get.toNamed(RouteConstant.day2),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 42.0, vertical: 10.0))),
                        child: Text(
                          '[2nd] Flutter widget',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
