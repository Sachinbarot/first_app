import 'package:first_app/keplerapp/appbarclipper.dart';
import 'package:first_app/keplerapp/login.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  bool isVisible = true;
  bool isAgree = false;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();

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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Create Your Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstnameController,
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: _lastnameController,
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        // labelText: 'Email',
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black26),
                            borderRadius: BorderRadius.circular(8.0))),
                  ),
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  Text(
                    "Use 6 characteres with a mix of letters,\n numbers & symbols.",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isAgree,
                          onChanged: (value) {
                            setState(() {
                              isAgree = value!;
                            });
                          }),
                      Text(
                          "By signing up, you agree to \nkeplers Term of Use & Privacy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: ColorTheme.primaryColor,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              backgroundColor: ColorTheme.buttonColor),
                          onPressed: () {
                            Globels.name = _firstnameController.text +
                                " " +
                                _lastnameController.text;
                            Globels.email = _emailController.text;
                            Globels.password = _passwordController.text;
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Loginclass()),
                            // );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.black, letterSpacing: 1.0),
                            ),
                          )),
                      Text(
                        "Or",
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 1.0),
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: ColorTheme.buttonColor, width: 2.0),
                            shape: RoundedRectangleBorder(
                                // side: BorderSide(color: ColorTheme.buttonColor),
                                borderRadius: BorderRadius.circular(6.0)),
                          ),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.black, letterSpacing: 1.0),
                            ),
                          )),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginclass()),
                        );
                      },
                      child: Text("Already have an account?"))
                ],
              ),
            ),
          ),
        ),
      );
}
