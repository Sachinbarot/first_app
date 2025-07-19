import 'package:first_app/api.dart';
import 'package:first_app/changenotifierexample.dart';
import 'package:first_app/demolects/demo1ui.dart';
import 'package:first_app/getXapp/bindings/homebinding.dart';
import 'package:first_app/getXapp/localization/languages.dart';
import 'package:first_app/getXapp/views/home.dart';
import 'package:first_app/keplerapp/profile.dart';
import 'package:first_app/yt/anim_scroll.dart';
import 'package:first_app/yt/confetti.dart';
import 'package:first_app/yt/expansible_widget.dart';
import 'package:first_app/yt/image_cropper.dart';
import 'package:first_app/yt/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
          iconTheme: const IconThemeData(
            color: Colors.red,
          ),
          cardColor: Colors.amber,
          textTheme: GoogleFonts.outfitTextTheme(),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.green,
              titleTextStyle: GoogleFonts.nunito(
                  fontSize: 20.0, fontWeight: FontWeight.bold))),
      translations: AppLanguages(),
      locale: Locale('en', 'US'),
      getPages: [
        GetPage(name: '/', page: () => ExpansibleWidget()),
      ],
    );
  }
}
