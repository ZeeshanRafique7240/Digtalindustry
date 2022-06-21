import 'package:digitaltechsindustry/Customer/customer_data.dart';
import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_add_product.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_settingpage.dart';

import 'package:digitaltechsindustry/screen/markitingitem.dart';
import 'package:flutter/material.dart';

class Shop_bottombar extends StatefulWidget {
  @override
  State<Shop_bottombar> createState() => _Shop_bottombarState();
}

class _Shop_bottombarState extends State<Shop_bottombar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    const shop_dashboard(),
    const Marketing_item(),
    Add_product(),
    Customer_Data(),
    const Shop_settingpage(),
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
        selectedLabelStyle: const TextStyle(fontSize: 20, color: Colors.amber),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Marketing',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 40,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_outlined),
            label: 'Add customer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
