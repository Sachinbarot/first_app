import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Notificationsclass extends StatefulWidget {
  const Notificationsclass({super.key});

  @override
  State<Notificationsclass> createState() => _NotificationsclassState();
}

class _NotificationsclassState extends State<Notificationsclass> {
  @override
  @override
  Widget build(BuildContext context) => Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/keplerassets/Top on Background.png"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // title: const Text(
            //   'Create Account',
            //   style: TextStyle(),
            // ),
            flexibleSpace: ClipPath(
              clipper: MyCustomAppBarClipper(),
              child: Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: ColorTheme.primaryColor,
                child: Center(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Lottie.asset("assets/keplerassets/notificationanimation.json"),
              const Text(
                "No Notifications Available",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      );
}
