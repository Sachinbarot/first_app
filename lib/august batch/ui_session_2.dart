import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class UiSession2 extends StatelessWidget {
  const UiSession2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Session 2 UI"),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.favorite),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Column(
        children: [
          MyCardWidget(
            cardColor: Colors.amber,
          ),
          MyCardWidget(
            cardColor: Colors.green,
          ),
          MyCardWidget(
            cardColor: Colors.blue,
          ),
          const Row(
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Share'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: 'Profile')
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyCardWidget extends StatelessWidget {
  MyCardWidget({
    super.key,
    this.cardColor,
  });

  Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: Get.size.width,
      child: Card(
        color: cardColor,
      ),
    );
  }
}
