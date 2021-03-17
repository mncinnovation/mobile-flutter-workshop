import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thedartpackage/module/layout_widget/controller/layout_widget_controller.dart';
import 'package:thedartpackage/module/layout_widget/widget/detail.dart';

class LayoutWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutWidgetController>(
      init: LayoutWidgetController(),
      builder: (LayoutWidgetController controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              elevation: 2.0,
              flexibleSpace: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/logo/logo_celebritiesdotid.png',
                    scale: 20 / 9,
                  ),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Detail())),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Headline',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Divider(
                      height: 4,
                      color: Colors.red[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Image.asset('assets/img/foto_bts.png'),
                  ),
                  Text(
                    'Entertainment',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[400]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Siap-Siap, BTS Dikabarkan Akan Rilis Album BE versi Terbaru',
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
