import 'package:flutter/material.dart';

class Customer_Menu extends StatefulWidget {
  const Customer_Menu({Key? key}) : super(key: key);

  @override
  State<Customer_Menu> createState() => _Customer_MenuState();
}

class _Customer_MenuState extends State<Customer_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Menu"),
      ),
    );
  }
}
