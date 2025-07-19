import 'package:flutter/material.dart';

class ExpansibleWidget extends StatefulWidget {
  const ExpansibleWidget({super.key});

  @override
  State<ExpansibleWidget> createState() => _ExpansibleWidgetState();
}

class _ExpansibleWidgetState extends State<ExpansibleWidget> {
  // Flutter version 3.32.0 or above

  final ExpansibleController controller = ExpansibleController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansible Widget'),
      ),
      body: const Center(child: Text("Expansible Screen")),
      floatingActionButton: Expansible(
          headerBuilder: (context, builder) {
            if (controller.isExpanded) {
              return InkWell(
                  onTap: () {
                    controller.collapse();
                  },
                  child: const Icon(
                    Icons.expand_less,
                    color: Colors.black,
                  ));
            } else {
              return InkWell(
                  onTap: () {
                    controller.expand();
                  },
                  child: const Icon(
                    Icons.expand_more,
                    color: Colors.black,
                  ));
            }
          },
          bodyBuilder: (context, builder) {
            return const Column(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ],
            );
          },
          controller: controller),
    );
  }
}
