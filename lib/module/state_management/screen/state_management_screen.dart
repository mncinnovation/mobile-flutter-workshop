import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thedartpackage/module/state_management/controller/state_management_controller.dart';

class StateManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StateManagementController>(
      init: StateManagementController(),
      builder: (StateManagementController controller) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 3.0,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
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
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Detail()));
                Get.toNamed('/detail');

                controller.setRead(false);
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Headline',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: Colors.red[600],
                  ),
                  Container(
                    height: 500,
                    child: CarouselSlider.builder(
                      itemCount: controller.listData.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                              child: Image.asset(
                                  controller.listData[index]['gambar']),
                            ),
                            Text(
                              controller.listData[index]['channel'],
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.red[600]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                controller.listData[index]['title'],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: controller.isRead
                                        ? Colors.black
                                        : Colors.blue),
                              ),
                            )
                          ],
                        );
                      },
                      options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          autoPlayInterval: Duration(seconds: 3),
                          initialPage: controller.page,
                          disableCenter: true,
                          height: 100,
                          onPageChanged: (index, _) {
                            controller.setPage(index);
                          }),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.listData.length,
                        (index) => Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red[600]),
                            shape: BoxShape.rectangle,
                            color: controller.page == index
                                ? Colors.red[600]
                                : Colors.white,
                          ),
                        ),
                      ),
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
