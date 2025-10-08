import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class UiSession12 extends StatefulWidget {
  const UiSession12({super.key});

  @override
  State<UiSession12> createState() => _UiSession12State();
}

class _UiSession12State extends State<UiSession12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: ReorderableListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      key: Key(index.toString()),
                      title: Text("Item $index"),
                    );
                  },
                  itemCount: 10,
                  onReorder: (currentIndex, newIndex) {}),
            )
          ],
        ),
      ),
    );
  }
}
