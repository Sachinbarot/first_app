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
                child: Text(
                  // number.toString(),
                  "Multi language App",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )),
          ),
          Text(
            'login'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'hello'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('hi', 'IN'));
              },
              child: Text("Switch To Hindi")),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('gu', 'IN'));
              },
              child: Text("Switch To Gujarati")),
          ElevatedButton(
            child: const Text("Show Dialog"),
            onPressed: () {
              // Get.snackbar("Success Response", "Data Fetched Successfull",
              //     colorText: Colors.black);
              // Get.dialog(Container(child: Text("This is getx dialog")));
              // Get.defaultDialog(
              //   title: "Dialog Title",
              //   onConfirm: () {
              //     Get.back();
              //   },
              // );
              Get.to(() => Screen2Class(),
                  arguments: {'id': 1, 'title': 'Screen for list'});
            },
          )
        ],
      ),
    );
  }
}
