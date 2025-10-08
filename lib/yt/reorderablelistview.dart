import 'package:flutter/material.dart';

class Reorderablelistview extends StatefulWidget {
  const Reorderablelistview({super.key});

  @override
  State<Reorderablelistview> createState() => _ReorderablelistviewState();
}

class _ReorderablelistviewState extends State<Reorderablelistview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reorderable List View"),
      ),
      body: Column(
        children: [
          const Text("Re-Orderable List View"),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ReorderableListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    key: Key(
                      index.toString(),
                    ),
                    title: Text("${index + 1}.Virat Kohli"),
                  );
                },
                itemCount: 10,
                onReorder: (currentIndex, newIndex) {
                  print("Reordered");
                }),
          )
        ],
      ),
    );
  }
}
