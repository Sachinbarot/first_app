import 'package:first_app/december-feb%20batch/animation.dart';
import 'package:first_app/getXapp/bindings/homebinding.dart';
import 'package:first_app/getXapp/localization/languages.dart';
import 'package:first_app/getXapp/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
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
              backgroundColor: Colors.transparent,
              titleTextStyle: GoogleFonts.nunito(
                  fontSize: 20.0, fontWeight: FontWeight.bold))),
      // routes: {'/': (context) => HomeClass(), '/exp1': (context) => Exp1()},
      translations: AppLanguages(),
      locale: Locale('en', 'US'),
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
            name: '/', page: () => MyAnimationApp(), binding: HomeBinding()),
      ],
    );
  }
}
