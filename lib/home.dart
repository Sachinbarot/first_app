import 'package:first_app/productlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: GoogleFonts.outfit(),
        ),
        // centerTitle: false,
        leading: const Icon(LucideIcons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(LucideIcons.bell_dot),
          )
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(LucideIcons.search),
                      suffixIcon: Icon(LucideIcons.mic),
                      // hintStyle: GoogleFonts.outfit(),
                      border: InputBorder.none,
                      hintText: 'Search for "Milk"'),
                ),
              ),
            ),
            // SizedBox(
            //   height: 0.0,
            // ),
            CarouselSlider(items: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Productlist()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/2.png'),
              ),
            ], options: CarouselOptions()),

            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                  width: 70.0,
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 280,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 3),
                  children: [
                    Image.asset(
                      "assets/c1.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/c2.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/c3.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/c1.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/c2.png",
                      height: 80,
                      width: 80,
                    ),
                    Image.asset(
                      "assets/c3.png",
                      height: 80,
                      width: 80,
                    )
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
