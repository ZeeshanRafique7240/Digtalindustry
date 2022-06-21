import 'package:flutter/material.dart';

class Customer_catagory extends StatefulWidget {
  const Customer_catagory({Key? key}) : super(key: key);

  @override
  State<Customer_catagory> createState() => _Customer_catagoryState();
}

class _Customer_catagoryState extends State<Customer_catagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catagories"),
      ),
    );
  }
}
