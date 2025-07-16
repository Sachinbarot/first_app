import 'package:flutter/material.dart';

class ExpansibleWidget extends StatefulWidget {
  const ExpansibleWidget({super.key});

  @override
  State<ExpansibleWidget> createState() => _ExpansibleWidgetState();
}

class _ExpansibleWidgetState extends State<ExpansibleWidget> {
  final ExpansibleController controller = ExpansibleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansible Widget Example'),
      ),
      body: Center(
        child: controller.isExpanded
            ? Text("Expansible Screen")
            : Text("Normal Screen"),
      ),
      floatingActionButton: Expansible(
          headerBuilder: (context, builder) {
            if (controller.isExpanded) {
              return IconButton(
                  onPressed: () {
                    setState(() {
                      controller.collapse();
                    });
                  },
                  icon: Icon(Icons.expand_more, size: 30, color: Colors.blue));
            } else {
              return IconButton(
                  onPressed: () {
                    setState(() {
                      controller.expand();
                    });
                  },
                  icon: Icon(Icons.expand_less, size: 30, color: Colors.blue));
            }
          },
          bodyBuilder: (context, builder) {
            return const Column(
              children: [
                Icon(Icons.star, size: 50, color: Colors.yellow),
                Icon(Icons.near_me, size: 50, color: Colors.yellow),
                Icon(Icons.favorite, size: 50, color: Colors.red),
                Icon(Icons.share, size: 50, color: Colors.green),
              ],
            );
          },
          controller: controller),
    );
  }
}
