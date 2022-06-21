import 'package:flutter/material.dart';

class customer_home extends StatefulWidget {
  const customer_home({Key? key}) : super(key: key);

  @override
  State<customer_home> createState() => _customer_homeState();
}

class _customer_homeState extends State<customer_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePAGE"),
      ),
    );
  }
}
