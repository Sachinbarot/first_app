import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/login.dart';
import 'package:first_app/keplerapp/notifications.dart';
import 'package:first_app/keplerapp/questions.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Activityclass extends StatefulWidget {
  const Activityclass({super.key});

  @override
  State<Activityclass> createState() => _ActivityclassState();
}

class _ActivityclassState extends State<Activityclass> {
  bool isVisible = true;
  bool isAgree = false;

  var data = Globels.activityMap;

  @override
  Widget build(BuildContext context) => Container(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/keplerassets/Top on Background.png"),
              fit: BoxFit.fill),
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
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.yellow,
                              size: 62.0,
                            ),
                            Icon(Icons.person, color: Colors.white, size: 32.0),
                          ],
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Child's Activity",
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          setState(() {
                            data[index]["id"] == 1
                                ? Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => QuestionClass()))
                                : Container();
                          });
                        },
                        child: Image.asset("${data[index]["path"]}"));
                  }),
            )),
      );
}
