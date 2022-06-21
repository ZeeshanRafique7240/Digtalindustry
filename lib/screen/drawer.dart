import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/accountdetail.dart';
import 'package:digitaltechsindustry/auth/shopkeeper_login.dart';

import 'package:digitaltechsindustry/auth/shopkeeper_signup.dart';
import 'package:flutter/material.dart';

class drawerapp extends StatefulWidget {
  const drawerapp({Key? key}) : super(key: key);

  @override
  State<drawerapp> createState() => _drawerappState();
}

class _drawerappState extends State<drawerapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const shop_dashboard()));
            }),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Become a Seller"),
              accountEmail: Text("alitradingcompany@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("ATC"),
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account_detail()));
              },
              child: const ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                  title: Text("Help"), leading: Icon(Icons.help)),
            ),

            //logout
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Shop_login(),
                    ),
                    (route) => false);
              },
              child: const ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),
              ),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: const Text(
                "Share",
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
