import 'package:first_app/session1.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class Session5Class extends StatefulWidget {
  const Session5Class({super.key});

  @override
  State<Session5Class> createState() => _Session5ClassState();
}

class _Session5ClassState extends State<Session5Class> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Form"),
        actions: [TextButton(onPressed: () {}, child: Text("Save"))],
      ),
      // backgroundColor: Colors.indigo.shade400,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
              const SizedBox(height: 100),
              // Text(
              //     "Full name is ${_nameController.text} And Email is ${_emailController.text}"),
              SliderButton(
                  alignLabel: Alignment.center,
                  // buttonSize: 60.0,
                  vibrationFlag: true,
                  buttonColor: Colors.indigo,
                  backgroundColor: Colors.indigo.shade100,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  label: const Text("Swipe to submit"),
                  action: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Session1Class()))),
            ],
          ),
        ),
      ),
    );
  }
}
