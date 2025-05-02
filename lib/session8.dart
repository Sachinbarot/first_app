import 'package:first_app/session5.dart';
import 'package:flutter/material.dart';

class Session8Class extends StatefulWidget {
  const Session8Class({super.key});

  @override
  State<Session8Class> createState() => _Session8ClassState();
}

class _Session8ClassState extends State<Session8Class> {
  // GlobalKey<State> _drawerKey = GlobalKey();

  List pages = ["Home Page", "Shopping Page", "Profile Page"];
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu));
        }),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: const Icon(Icons.home),
              ),
              Tab(
                icon: const Icon(Icons.shopping_cart),
              ),
              Tab(
                icon: const Icon(Icons.person),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Center(child: Text("Home Page")),
                Center(child: Text("Shopping Page")),
                Center(child: Text("Profile Page")),
              ]),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 9,
            ),
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/c1.png"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Sachin Brahmbhatt",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text("Go to cart"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16.0,
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Session5Class()));
                }),
            ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text("Buy something new"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16.0,
                ),
                onTap: () {}),
          ],
        ),
        // key: _drawerKey,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.indigo,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.red,
      //     currentIndex: _selectedPageIndex,
      //     onTap: (value) {
      //       setState(() {
      //         _selectedPageIndex = value;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.shopping_bag), label: 'Shop'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      //     ]),
    );
  }
}
