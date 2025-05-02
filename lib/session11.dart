import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Session11Class extends StatefulWidget {
  const Session11Class({super.key});

  @override
  State<Session11Class> createState() => _Session11ClassState();
}

class _Session11ClassState extends State<Session11Class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  // barrierDismissible: true,
                  builder: (context) => CupertinoAlertDialog(
                        title: Text('Are you sure?'),
                        content: Text("Are you sure you want to exit?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                SystemNavigator.pop();
                              },
                              child: Text("Yes")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("No")),
                        ],
                      ));
            },
            child: Text("Click to open dialog")),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                // isDismissible: false,
                context: context,
                builder: (context) => Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text("This is a bottom sheet"),
                          ElevatedButton(
                            child: Text("Close Bottom Sheet"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    ));
          },
          child: Text("Show the bottomsheet"),
        ),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: Duration(seconds: 1),
                backgroundColor: Colors.green,
                content: Text("Regisration completed")));
          },
          child: Text("Show me the snackbar"),
        ),
        ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  backgroundColor: Colors.green,
                  gravity: ToastGravity.CENTER_RIGHT,
                  msg: "User registered successfully");
            },
            child: Text("Show me the toast message"))
      ],
    ));
  }
}
