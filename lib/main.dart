import 'package:first_app/august%20batch/ui_session_14.dart';
import 'package:first_app/getXapp/localization/languages.dart';
import 'package:first_app/yt/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          primaryColor: Colors.black26,
          scaffoldBackgroundColor: Colors.black45),
      theme: ThemeData(
          // fontFamily: "PT Sans",
          iconTheme: const IconThemeData(
            color: Colors.red,
          ),
          cardColor: Colors.amber,
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.green,
              titleTextStyle: GoogleFonts.nunito(
                  fontSize: 20.0, fontWeight: FontWeight.bold))),
      translations: AppLanguages(),
      locale: Locale('en', 'US'),
      getPages: [
        GetPage(name: '/', page: () => const DottedBorderScreen()),
      ],
    );
  }
}
