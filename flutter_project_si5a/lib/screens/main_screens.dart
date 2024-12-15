import 'package:flutter/material.dart';
import 'package:flutter_project_si5a/screens/favorite_screens.dart';
import 'package:flutter_project_si5a/screens/home_screens.dart';
import 'package:flutter_project_si5a/screens/login_screens.dart';

import 'package:flutter_project_si5a/screens/profile_screens.dart';
import 'package:flutter_project_si5a/screens/search_screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screenOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    LoginScreen()
    
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          // item pertama
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          // item kedua
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          // item ketiga
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
          // item keempat
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.deepPurple.shade200,
      ),
    );
  }
}
