import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class Screen2Class extends StatefulWidget {
  Screen2Class({super.key});

  @override
  State<Screen2Class> createState() => _Screen2ClassState();
}

class _Screen2ClassState extends State<Screen2Class> {
  var args;
  var title;
  @override
  void initState() {
    args = Get.arguments;

    title = args['title'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'forgot_password'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
