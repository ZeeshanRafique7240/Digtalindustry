import 'package:flutter/material.dart';

class Customer_cart extends StatefulWidget {
  const Customer_cart({Key? key}) : super(key: key);

  @override
  State<Customer_cart> createState() => _Customer_cartState();
}

class _Customer_cartState extends State<Customer_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to Cart"),
      ),
    );
  }
}
