
// SliderButton(
//             height: MediaQuery.of(context).size.height / 10,
//             width: MediaQuery.of(context).size.width - 30,
//             // buttonSize: 40.0,
//             backgroundColor: Colors.indigo.shade200,
//             buttonColor: Colors.indigo,
//             action: () => Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => HomePage())),
//             icon: const Icon(
//               Icons.arrow_forward_ios_rounded,
//               color: Colors.white,
//             ),
//             alignLabel: Alignment.center,
//             label: const Text(
//               "Swipe to go home",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
//             ),
//           ),




// return Scaffold(
//       appBar: AppBar(
//         title: const Text("Google Navbar"),
//       ),
//       body: Center(child: Text(_screens[_currentIndex])),
//       bottomNavigationBar: GNav(
//           onTabChange: (value) {
//             setState(() {
//               _currentIndex = value;
//             });
//           },
//           backgroundColor: Colors.black,
//           activeColor: Colors.white,
//           gap: 8,
//           iconSize: 24,
//           padding: const EdgeInsets.all(16.0),
//           tabMargin: const EdgeInsets.all(10.0),
//           tabBackgroundColor: Colors.grey.shade800,
//           selectedIndex: _currentIndex,
//           tabs: [
//             GButton(
//               icon: LucideIcons.house,
//               iconColor: Colors.grey.shade300,
//               text: "Home",
//             ),
//             GButton(
//               icon: Icons.favorite_outline,
//               iconColor: Colors.grey.shade300,
//               text: "Favourite",
//             ),
//             GButton(
//               icon: LucideIcons.search,
//               iconColor: Colors.grey.shade300,
//               text: "Search",
//             ),
//             GButton(
//               icon: LucideIcons.user_round,
//               iconColor: Colors.grey.shade300,
//               text: "Profile",
//             )
//           ]),
//     );