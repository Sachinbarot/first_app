import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiSession6 extends StatelessWidget {
  const UiSession6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Assets Practical",
          style: GoogleFonts.offside(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'assets/view.jpg',
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
