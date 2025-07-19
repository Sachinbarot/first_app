import 'package:flutter/material.dart';

class Demo1UI extends StatelessWidget {
  Demo1UI({super.key});

  String appbarTitle = "Demo 1 screen";

  dynamic a = true;

  TextEditingController _emailCont = TextEditingController();
  TextEditingController _passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(appbarTitle),
      //   centerTitle: false,
      //   leading: const Icon(Icons.menu),
      //   actions: const [
      //     Icon(Icons.shopping_bag)],
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        )),
                  ),
                  const Positioned(
                      top: 100,
                      left: 20.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Hey, Welcome back!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
          Positioned(
            top: 300.0,
            left: 50.0,
            child: SizedBox(
              height: 300,
              width: 300,
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 15.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailCont,
                        decoration: InputDecoration(
                            labelText: 'Enter Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: _passwordCont,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Enter Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print(_emailCont.text);
                            print(_passwordCont.text);
                          },
                          child: const Text("Login"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
