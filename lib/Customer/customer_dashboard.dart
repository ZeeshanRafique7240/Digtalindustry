import 'package:flutter/material.dart';

class Customer_dashboard extends StatefulWidget {
  const Customer_dashboard({Key? key}) : super(key: key);

  @override
  State<Customer_dashboard> createState() => _Customer_dashboardState();
}

class _Customer_dashboardState extends State<Customer_dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping"),
      ),
      body: Column(
        children: [Text("This is a customer dashboard")],
      ),
    );
  }
}
