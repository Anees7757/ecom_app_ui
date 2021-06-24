import 'pages/cart.dart';
import 'pages/favourite.dart';
import 'pages/home.dart';
import 'package:flutter/material.dart';

import 'pages/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final tabs = [
    HomePage(),
    Favourite(),
    Cart(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Ecom App UI',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          Icon(Icons.notifications, color: Colors.black),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body:  tabs[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        color: Colors.white,
        child:  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconSize: 33,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
              child: Icon(Icons.favorite)
          ),
          label: '',
          tooltip: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
              child: Icon(Icons.add_shopping_cart)
          ),
          label: '',
          tooltip: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
          tooltip: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple[700],
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.search, size: 30),
        backgroundColor: Colors.purple[700],
      ),
    );
  }
}
