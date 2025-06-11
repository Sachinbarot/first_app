import 'package:first_app/getXapp/controller/homecontroller.dart';
import 'package:first_app/getXapp/views/screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomeClass extends GetView<HomeController> {
  HomeClass({super.key});

  // final HomeController controller = Get.find();/

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeClass'),
      ),
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                // _increment();
                // number.value++;
                controller.increment();
                // controller.addListener;
              },
              child: Obx(() {
                return Text(
                  // number.toString(),
                  "GetX Number is ${controller.rank}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                );
              }),
            ),
          ),
          ElevatedButton(
            child: const Text("Show Dialog"),
            onPressed: () {
              // number.value++;
              // Get.defaultDialog(title: "Testing GetX Dialog");
              // Get.to(Screen2Class(), transition: Transition.zoom);
            },
          )
        ],
      ),
    );
  }
}
