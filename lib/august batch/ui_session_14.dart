import 'package:first_app/yt/lucideicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:slider_button/slider_button.dart';

class UiSession14 extends StatefulWidget {
  const UiSession14({super.key});

  @override
  State<UiSession14> createState() => _UiSession14State();
}

class _UiSession14State extends State<UiSession14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Button"),
      ),
      body: Center(
        child: SliderButton(
          action: () async {},
          buttonColor: Colors.blue.shade800,
          backgroundColor: Colors.blue.shade100,
          highlightedColor: Colors.white,
          alignLabel: Alignment.center,
          label: const Text(
            "Swipe to explore",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          icon: Icon(
            LucideIcons.chevron_right,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
