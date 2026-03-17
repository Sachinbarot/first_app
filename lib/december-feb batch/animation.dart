import 'package:flutter/material.dart';

class MyAnimationApp extends StatefulWidget {
  const MyAnimationApp({super.key});

  @override
  State<MyAnimationApp> createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Color containerColor = Colors.blueAccent;
  Alignment containerAlignment = Alignment.centerLeft;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.easeIn,
              height: 100,
              width: 100,
              duration: Duration(seconds: 1),
              color: containerColor,
              child: Center(
                child: Container(
                  clipBehavior: Clip.none,
                  color: Colors.amber,
                  height: 50,
                  width: 50,
                  child: Text('Something'),
                  alignment: containerAlignment,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = Colors.black;
                    containerAlignment = Alignment.bottomCenter;
                  });
                },
                child: Text('Change Color'))
          ],
        ),
      ),
    );
  }
}
