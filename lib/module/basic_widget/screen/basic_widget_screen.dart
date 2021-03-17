import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:thedartpackage/module/basic_widget/controller/basic_widget_controller.dart';

class BasicWidgetScreen extends StatefulWidget {
  @override
  _BasicWidgetScreenState createState() => _BasicWidgetScreenState();
}

class _BasicWidgetScreenState extends State<BasicWidgetScreen> {
  bool showImage = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BasicWidgetController>(
      init: BasicWidgetController(),
      builder: (BasicWidgetController controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Happy Flutter',
              style: TextStyle(color: Colors.blue),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Message from snackbar'),
                    backgroundColor: Colors.red,
                  ),
                ),
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hai innocent',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                showImage
                    ? Image.asset(
                        "assets/logo/logo-innocent.png",
                        scale: 16 / 9,
                      )
                    : LottieBuilder.asset('assets/img/scooter.json'),
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showImage = !showImage;
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    child: Text('press me'))
              ],
            ),
          ),
        );
      },
    );
  }
}
