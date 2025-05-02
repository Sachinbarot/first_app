import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class Googlenavbar extends StatefulWidget {
  const Googlenavbar({super.key});

  @override
  State<Googlenavbar> createState() => _GooglenavbarState();
}

class _GooglenavbarState extends State<Googlenavbar> {
  int _currentIndex = 0;

  final List<String> _screens = [
    "Home Page",
    "Favourite Page",
    "Search Page",
    "Profile Page"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Navbar"),
      ),
      body: Center(child: Text(_screens[_currentIndex])),
      bottomNavigationBar: GNav(
          selectedIndex: _currentIndex,
          onTabChange: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          activeColor: Colors.white,
          gap: 5,
          iconSize: 24,
          padding: const EdgeInsets.all(16),
          tabMargin: const EdgeInsets.all(10.0),
          tabBackgroundColor: Colors.grey.shade800,
          backgroundColor: Colors.black,
          tabs: const [
            GButton(
              icon: LucideIcons.house,
              text: 'Home',
              iconColor: Colors.white,
            ),
            GButton(
              icon: LucideIcons.heart,
              text: 'Favourite',
              iconColor: Colors.white,
            ),
            GButton(
              icon: LucideIcons.search,
              text: 'Search',
              iconColor: Colors.white,
            ),
            GButton(
              icon: LucideIcons.user_round,
              text: 'Profile',
              iconColor: Colors.white,
            ),
          ]),
    );
  }
}
