import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Lucideicons extends StatefulWidget {
  const Lucideicons({super.key});

  @override
  State<Lucideicons> createState() => _LucideiconsState();
}

class _LucideiconsState extends State<Lucideicons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lucide Icons'),
      ),
      body: const Center(
        child: Icon(
          LucideIcons.airplay,
          size: 50.0,
        ),
      ),
    );
  }
}
