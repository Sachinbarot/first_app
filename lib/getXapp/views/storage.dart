import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Storage extends StatelessWidget {
  Storage({super.key});

  TextEditingController dataController = TextEditingController();

  final GetStorage box = GetStorage();

  RxString data = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storage App'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: dataController,
          ),
          ElevatedButton(
            onPressed: () {
              box.write('data', dataController.text);
              data.value = box.read('data');
            },
            child: Text('Save Data'),
          ),
          ElevatedButton(
              onPressed: () {
                box.remove('data');
              },
              child: Text('Clear Data')),
          ElevatedButton(
              onPressed: () {
                box.write('data', dataController.text);
              },
              child: Text('Save Data')),
          Obx(() => Text(data.value)),
        ],
      ),
    );
  }
}
