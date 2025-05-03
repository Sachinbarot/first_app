import 'package:first_app/animcontainer.dart';
import 'package:first_app/home.dart';
import 'package:first_app/keplerapp/bottomnavbar.dart';
import 'package:first_app/keplerapp/createaccount.dart';
import 'package:first_app/keplerapp/utills.dart';
import 'package:first_app/layoutbuilder.dart';
import 'package:first_app/neumorphic_screen.dart';
import 'package:first_app/productlist.dart';
import 'package:first_app/session1.dart';
import 'package:first_app/session11.dart';
import 'package:first_app/session2.dart';
import 'package:first_app/session4.dart';
import 'package:first_app/session5.dart';
import 'package:first_app/session7.dart';
import 'package:first_app/session8.dart';
import 'package:first_app/stateexample.dart';
import 'package:first_app/yt/googlenavbar.dart';
import 'package:first_app/yt/liquid_pull.dart';
import 'package:first_app/yt/lottie.dart';
import 'package:first_app/yt/lucideicons.dart';
import 'package:first_app/yt/showcase.dart';
import 'package:first_app/yt/showcasewidget.dart';
import 'package:first_app/yt/slidable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      home: Animcontainer(),
    );
  }
}
