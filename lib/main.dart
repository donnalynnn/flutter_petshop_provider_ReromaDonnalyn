import 'package:flutter/material.dart';
import 'Screens/cartscreen.dart';
import 'Screens/catalogscreen.dart';
import 'package:provider/provider.dart';
import '/Models/animal.dart';
import '/Providers/cart_provider.dart';
import 'Screens/detailscreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const PetShopApp(),
    ),
  );
}


class PetShopApp extends StatelessWidget {
  const PetShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const NavBar(),
      routes: {
        // '/': (context) => const HomeScreen(),
        '/pet_details': (context) => const PetDetails(),
      },
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        surfaceTintColor: Colors.white ,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,

        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color:Color(0xffe8be13)),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),


          NavigationDestination(
            selectedIcon: Icon(Icons.menu_book, color:Color(0xffe8be13)),
            icon: Icon(Icons.menu_book_outlined),
            label: 'Catalog',
          ),


          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_basket, color:Color(0xffe8be13)),
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Cart',
          ),

          NavigationDestination(
            selectedIcon: Icon(Icons.person_2_rounded, color:Color(0xffe8be13)),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Catalog page
        PetCatalog(),

        /// Notifications page
        const CartScreen(),
        // const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: Column(
        //     children: <Widget>[
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.notifications_sharp),
        //           title: Text('Notification 1'),
        //           subtitle: Text('This is a notification'),
        //         ),
        //       ),
        //       Card(
        //         child: ListTile(
        //           leading: Icon(Icons.notifications_sharp),
        //           title: Text('Notification 2'),
        //           subtitle: Text('This is a notification'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        /// profile page
        Container()
      ][currentPageIndex],
    );
  }
}
