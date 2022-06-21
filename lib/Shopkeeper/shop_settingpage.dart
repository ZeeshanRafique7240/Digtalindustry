import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class Shop_settingpage extends StatefulWidget {
  const Shop_settingpage({Key? key}) : super(key: key);

  @override
  State<Shop_settingpage> createState() => _Shop_settingpageState();
}

class _Shop_settingpageState extends State<Shop_settingpage> {
  bool isswitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerapp(),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/person.png",
                  height: 100,
                  width: 100,
                ),
                Text(
                  "Ali Raza",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 5,
              color: Colors.blue,
            ),

            //row 2
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/lightmode.png",
                    height: 50,
                    width: 50,
                  ),
                  const Text("Dark Mode")
                ],
              ),
            ),

            const Text(
              "General",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/accounts.jpg",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Account Settings",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            //card 2
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/logoutttt.jpg",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "LogOut",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),

            //card 3
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/Delete.jpg",
                      height: 50,
                      width: 50,
                    ),
                    Text(
                      "Delete Account",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
