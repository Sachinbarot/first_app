import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class Session9Class extends StatefulWidget {
  const Session9Class({super.key});

  @override
  State<Session9Class> createState() => _Session9ClassState();
}

class _Session9ClassState extends State<Session9Class> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: NeumorphicIndicator(
              percent: 0.5,
            ),
          ),
          NeumorphicSwitch(
            value: _isSwitched,
            style: NeumorphicSwitchStyle(
                trackDepth: 10.0,
                disableDepth: false,
                activeThumbColor: Colors.green,
                activeTrackColor: Colors.green.shade100),
            onChanged: (value) {
              setState(() {
                if (_isSwitched) {
                  _isSwitched = false;
                } else {
                  _isSwitched = true;
                }
              });
            },
          ),
          Center(
            child: NeumorphicButton(
              onPressed: () {},
              margin: EdgeInsets.only(top: 12),
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                depth: 10.0,
                intensity: 10.0,
                lightSource: LightSource.bottomRight,
                shadowLightColor: Colors.amber,
                color: Colors.red,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
              ),
              child: Text("First Button"),
            ),
          ),
        ],
      ),
    );
  }
}
