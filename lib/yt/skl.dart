import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeltonizerUiExample extends StatefulWidget {
  const SkeltonizerUiExample({super.key});

  @override
  State<SkeltonizerUiExample> createState() => _SkeltonizerUiExampleState();
}

class _SkeltonizerUiExampleState extends State<SkeltonizerUiExample> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skeltonizer UI Example'),
      ),
      body: Skeletonizer(
        enabled: isLoading,
        child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
            itemBuilder: (context, index) {
              return const ListTile(
                title: Text('Virat Kohli'),
                subtitle: Text('India | Batsman'),
                trailing: Text(
                  '18',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isLoading) {
            isLoading = false;
          } else {
            isLoading = true;
          }
          setState(() {});
        },
        child:
            isLoading ? const Icon(Icons.pause) : const Icon(Icons.play_arrow),
      ),
    );
  }
}
