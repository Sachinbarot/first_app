import 'package:first_app/keplerapp/activity.dart';
import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/login.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Profileclass extends StatefulWidget {
  const Profileclass({super.key});

  @override
  State<Profileclass> createState() => _ProfileclassState();
}

class _ProfileclassState extends State<Profileclass> {
  bool isVisible = true;
  bool isAgree = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _loadData() {
    _emailController.text = Globels.email;
    _passwordController.text = Globels.password;
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

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
                  child: Text(
                    "ACCOUNT SETTING",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 0.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.yellow,
                            size: 82.0,
                          ),
                          Icon(Icons.person, color: Colors.white, size: 52.0),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Globels.name,
                            style: const TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Globels.email,
                            style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black45,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        enabled: true,
                        // hintText: 'Email',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Passwords",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        suffixIcon: isVisible
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                  });
                                },
                                icon: const Icon(LucideIcons.eye))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = true;
                                  });
                                },
                                icon: const Icon(LucideIcons.eye_off)),
                        // labelText: 'Email',
                        // hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        enabled: true,
                        // hintText: 'Email',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Your Address",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextFormField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        enabled: true,

                        // hintText: 'Email',
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            backgroundColor: ColorTheme.buttonColor),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Activityclass()),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Text(
                            "SAVE",
                            style: TextStyle(
                                color: Colors.black, letterSpacing: 1.0),
                          ),
                        )),
                  ),

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
