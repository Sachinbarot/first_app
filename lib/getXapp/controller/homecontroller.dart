import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final products = [].obs;

  var rank = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  increment() {
    rank.value++;
  }

  getProducts() async {
    final request = Uri.parse("https://dummyjson.com/products");
    try {
      final response = await http.get(request);
      if (response.statusCode == 200) {
        print(response.body);
        Get.snackbar("Success", "Data Fetched Successfully",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.transparent,
            colorText: Colors.black);
      } else {
        Get.snackbar("Error", "Something Went Wrong",
            colorText: Colors.black, backgroundColor: Colors.transparent);
      }
    } catch (error) {
      Get.snackbar("Error", "$error", backgroundColor: Colors.black);
    }
  }
}
