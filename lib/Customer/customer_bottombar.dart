import 'package:digitaltechsindustry/Customer/Customer_menu.dart';
import 'package:digitaltechsindustry/Customer/catagories.dart';
import 'package:digitaltechsindustry/Customer/customer_cart.dart';

import 'package:flutter/material.dart';

class Customer_bottombar extends StatefulWidget {
  const Customer_bottombar({Key? key}) : super(key: key);

  @override
  State<Customer_bottombar> createState() => _Customer_bottombarState();
}

class _Customer_bottombarState extends State<Customer_bottombar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Customer_catagory(),
    Customer_cart(),
    Customer_Menu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Marketing',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 40,
            ),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
