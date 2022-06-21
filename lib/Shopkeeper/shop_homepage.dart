import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_bottombar.dart';
import 'package:flutter/material.dart';

class Shop_Homepage extends StatefulWidget {
  const Shop_Homepage({Key? key}) : super(key: key);

  @override
  State<Shop_Homepage> createState() => _Shop_HomepageState();
}

class _Shop_HomepageState extends State<Shop_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Shop_bottombar(),
      ],
    ));
  }
}
