import 'package:first_app/keplerapp/activity.dart';
import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/createaccount.dart';
import 'package:first_app/keplerapp/login.dart';
import 'package:first_app/keplerapp/notifications.dart';
import 'package:first_app/keplerapp/profile.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class BottomnavbarClass extends StatefulWidget {
  const BottomnavbarClass({super.key});

  @override
  State<BottomnavbarClass> createState() => _BottomnavbarClassState();
}

class _BottomnavbarClassState extends State<BottomnavbarClass> {
  bool isVisible = true;
  bool isAgree = false;

  int _currentIndex = 0;

  List screens = [
    const Createaccount(),
    const Activityclass(),
    const Notificationsclass(),
    const Profileclass()
  ];

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
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   // title: const Text(
          //   //   'Create Account',
          //   //   style: TextStyle(),
          //   // ),
          //   flexibleSpace: ClipPath(
          //     clipper: MyCustomAppBarClipper(),
          //     child: Container(
          //       height: 250.0,
          //       width: MediaQuery.of(context).size.width,
          //       color: ColorTheme.primaryColor,
          //     ),
          //   ),
          // ),
          body: screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              // selectedIconTheme: IconThemeData(
              //   color: Colors.yellow,
              // ),
              backgroundColor: ColorTheme.secondaryColor,
              currentIndex: _currentIndex,
              selectedItemColor: Colors.yellow,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.white,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: ColorTheme.secondaryColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Activities',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                ),
              ]),
        ),
      );
}
