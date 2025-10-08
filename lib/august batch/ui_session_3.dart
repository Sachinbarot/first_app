import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var mydata = "I will not change";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Text(mydata),
            const SizedBox(
              height: 10.0,
            ),
            const Badge(label: Text("99"), child: Icon(LucideIcons.bell_dot)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mydata = "You have to change";
                  });
                },
                child: const Text("Change it")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
