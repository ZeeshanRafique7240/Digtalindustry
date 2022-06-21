import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class Account_detail extends StatefulWidget {
  const Account_detail({Key? key}) : super(key: key);

  @override
  State<Account_detail> createState() => _Account_detailState();
}

class _Account_detailState extends State<Account_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerapp(),
      appBar: AppBar(
        title: const Text("Account Detial"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "(Personal Profile)",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Name:",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Danish Ali",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),

          //row2
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop Name:",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "ATC",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),

          //ROW 3
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Email:",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Text(
                "danishali@gmail.com",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),

          const SizedBox(
            height: 30,
          ),

          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey),
            child: Column(
              children: [
                Image.asset(
                  "assets/location.jpg",
                  height: 80,
                  width: 80,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Save Your Address here"),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Add Address"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
