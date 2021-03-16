import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thedartpackage/module/introduction/controller/introduction_controller.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroductionController>(
      init: IntroductionController(),
      builder: (IntroductionController controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hello World',
                  style: Theme.of(context).textTheme.headline5,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
