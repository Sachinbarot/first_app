import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiClass extends StatefulWidget {
  const ApiClass({super.key});

  @override
  State<ApiClass> createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {
  fetchData() async {
    var requestUrl = Uri.parse("https://dummyjson.com/prod3ucts");
    var response = await http.get(requestUrl); // Send a GET request
    print("Status Code =>> ${response.statusCode}");
    print("Response Body =>> ${response.body}");
    if (response.statusCode == 200) {
      print("Request Successful");
      print("Response Body =>> ${response.body}");
    } else if (response.statusCode == 404) {
      print("Request Not Found");
      print("No Response Body =>> ${response.body}");
    } else {
      print("Request Failed");
      print("Status Code =>> ${response.statusCode}");
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Class'),
      ),
    );
  }
}
