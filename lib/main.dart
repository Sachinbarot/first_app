import 'package:first_app/yt/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primaryColor: Colors.black26,
          scaffoldBackgroundColor: Colors.black45),
      theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.red,
          ),
          cardColor: Colors.amber,
          textTheme: GoogleFonts.outfitTextTheme(),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.green,
              titleTextStyle: GoogleFonts.nunito(
                  fontSize: 20.0, fontWeight: FontWeight.bold))),
      home: ShimmerClass(),
    );
  }
}
