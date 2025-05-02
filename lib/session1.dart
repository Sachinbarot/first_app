import 'package:flutter/material.dart';

class Session1Class extends StatelessWidget {
  const Session1Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        title: const Text(
          'Session 1',
          style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/1.png"),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.location_city),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Gandhinagar",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "10-04-2025",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text("Heavy discount on electronic products in april 2025",
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(
              height: 10.0,
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
