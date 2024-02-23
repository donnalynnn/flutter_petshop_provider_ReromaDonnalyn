import 'package:flutter/material.dart';
import 'Screens/cartscreen.dart';
import 'Screens/catalogscreen.dart';
import 'package:provider/provider.dart';
import '/Providers/cart_provider.dart';
import 'Screens/detailscreen.dart';
import 'package:flutter/services.dart';
import 'Screens/onboardingscreen.dart';
import 'app_styles.dart';

bool? seenOnboard=false;
void main()  {
  WidgetsFlutterBinding.ensureInitialized();

  // show status bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
    SystemUiOverlay.top,
  ]);

  // to load onboard shared preferences for the first time
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // seenOnboard = prefs.getBool('seenOnboard') ?? false;

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
      home: seenOnboard == true ? const NavBar() : const OnboardingPage(),
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
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Color(0xffe8be13)),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.menu_book, color: Color(0xffe8be13)),
            icon: Icon(Icons.menu_book_outlined),
            label: 'Catalog',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_basket, color: Color(0xffe8be13)),
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon:
                Icon(Icons.person_2_rounded, color: Color(0xffe8be13)),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: Container(
        color: kAmber,
        child: <Widget>[
          /// Home page
          const Card(
            shadowColor: Colors.transparent,
            margin: EdgeInsets.all(50),
            child: SizedBox.expand(
              child: Center(
                child: Text(
                  '   PET \nSTORE',
                  style: TextStyle(fontSize: 50, color: kAmber),)
              ),
            ),
          ),
      
          /// Catalog page
          PetCatalog(),
      
          /// Notifications page
          const CartScreen(),
      
          /// profile page
          Container()
        ][currentPageIndex],
      ),
    );
  }
}
