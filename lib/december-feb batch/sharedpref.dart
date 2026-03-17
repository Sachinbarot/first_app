import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefExample extends StatefulWidget {
  const SharedPrefExample({super.key});

  @override
  State<SharedPrefExample> createState() => _SharedPrefExampleState();
}

class _SharedPrefExampleState extends State<SharedPrefExample> {
  String data = 'empty';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: Column(
        children: [
          Spacer(),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString(
                        'example', 'Storing in a local with shared preference');
                  },
                  child: Text('setData')),
              ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      data = prefs.getString('example')!;
                    });
                  },
                  child: Text('getData')),
              ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('example');
                  },
                  child: Text('clearData'))
            ],
          ),
          Text(data),
          Spacer()
        ],
      ),
    );
  }
}
