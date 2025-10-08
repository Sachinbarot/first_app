import 'package:flutter/material.dart';

class UiSession11 extends StatelessWidget {
  const UiSession11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ui Session 11"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
                thickness: 1,
              ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Card(
                child: Center(child: Text("My Card ${index + 1}")),
              ),
            );
          }),
    );
  }
}
