import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableList extends StatefulWidget {
  const SlidableList({super.key});

  @override
  State<SlidableList> createState() => _SlidableListState();
}

class _SlidableListState extends State<SlidableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slidable List')),
        body: ListView(
          children: [
            Slidable(
              startActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // Do the code for the start action
                  },
                  icon: Icons.add,
                  backgroundColor: Colors.green,
                )
              ]),
              endActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.pencil,
                  label: 'Edit',
                  backgroundColor: Colors.blue,
                ),
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.trash_2,
                  label: 'Delete',
                  backgroundColor: Colors.red,
                )
              ]),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Virat Kohli"),
                subtitle: Text("Indian Cricketer"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Slidable(
              startActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // Do the code for the start action
                  },
                  icon: Icons.add,
                  backgroundColor: Colors.green,
                )
              ]),
              endActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.pencil,
                  label: 'Edit',
                  backgroundColor: Colors.blue,
                ),
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.trash_2,
                  label: 'Delete',
                  backgroundColor: Colors.red,
                )
              ]),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Virat Kohli"),
                subtitle: Text("Indian Cricketer"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Slidable(
              startActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    // Do the code for the start action
                  },
                  icon: Icons.add,
                  backgroundColor: Colors.green,
                )
              ]),
              endActionPane:
                  ActionPane(motion: const StretchMotion(), children: [
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.pencil,
                  label: 'Edit',
                  backgroundColor: Colors.blue,
                ),
                SlidableAction(
                  onPressed: (context) {
                    //Do the code
                  },
                  icon: LucideIcons.trash_2,
                  label: 'Delete',
                  backgroundColor: Colors.red,
                )
              ]),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("MS Dhoni"),
                subtitle: Text("Indian Cricketer"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        ));
  }
}
