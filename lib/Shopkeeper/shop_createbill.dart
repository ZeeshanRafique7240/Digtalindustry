import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class createbill extends StatefulWidget {
  const createbill({Key? key}) : super(key: key);

  @override
  State<createbill> createState() => _createbillState();
}

class _createbillState extends State<createbill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerapp(),
      appBar: AppBar(
        title: Text("Craete Billls"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text("Search"),
                ),
              ),
            ),
          ),
          Text(
            "5 Total Product",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          Card(
            child: Row(children: [
              Image.asset(
                "assets/charger.jpg",
                height: 60,
                width: 60,
              ),
              Container(
                child: Column(
                  children: const [
                    Text("Charger",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    Text("Out of Stocks"),
                    Text("Rs: 150",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              )
            ]),
          ),

          //card 2
          Card(
            child: Row(children: [
              Image.asset(
                "assets/headphone.jpg",
                height: 60,
                width: 60,
              ),
              Container(
                child: Column(
                  children: const [
                    Text("HeadPhone",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    Text("Out of Stocks"),
                    Text("Rs: 1500",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              )
            ]),
          ),
          //card 3
          Card(
            child: Row(children: [
              Image.asset(
                "assets/phone.jpg",
                height: 60,
                width: 60,
              ),
              Container(
                child: Column(
                  children: const [
                    Text("OppOA5s",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    Text("Out of Stocks"),
                    Text("Rs: 30,500",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              )
            ]),
          ),
          //card 4
          Card(
            child: Row(children: [
              Image.asset(
                "assets/handfree.jpg",
                height: 60,
                width: 60,
              ),
              Container(
                child: Column(
                  children: const [
                    Text("handfree",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    Text("Out of Stocks"),
                    Text("Rs: 250",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              )
            ]),
          ),

          //card 5
          Card(
            child: Row(children: [
              Image.asset(
                "assets/smartwatch.jpg",
                height: 60,
                width: 60,
              ),
              Column(
                children: const [
                  Text("Smart Watch",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                  Text("Out of Stocks"),
                  Text("Rs: 2000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
