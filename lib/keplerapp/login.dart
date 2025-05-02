import 'package:first_app/keplerapp/activity.dart';
import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/login.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Loginclass extends StatefulWidget {
  const Loginclass({super.key});

  @override
  State<Loginclass> createState() => _LoginclassState();
}

class _LoginclassState extends State<Loginclass> {
  bool isVisible = true;
  bool isAgree = false;

  @override
  Widget build(BuildContext context) => Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/keplerassets/Top on Background.png"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
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
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                  ),
                  Image.asset(
                    "assets/keplerassets/Logo.png",
                    height: MediaQuery.of(context).size.height / 9,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        // labelText: 'Email',

                        hintText: 'Phone No. or Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    textAlign: TextAlign.center,
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        suffixIcon: isVisible
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                  });
                                },
                                icon: Icon(LucideIcons.eye))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = true;
                                  });
                                },
                                icon: Icon(LucideIcons.eye_off)),
                        // labelText: 'Email',
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)),
                          backgroundColor: ColorTheme.buttonColor),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activityclass()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.black, letterSpacing: 1.0),
                        ),
                      )),

                  // Container(
                  //   color: ColorTheme.secondaryColor,
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height / 8,
                  // )
                ],
              ),
            ),
          ),
        ),
      );
}
