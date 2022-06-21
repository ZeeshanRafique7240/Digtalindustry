import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class shop_hisab extends StatefulWidget {
  const shop_hisab({Key? key}) : super(key: key);

  @override
  State<shop_hisab> createState() => _shop_hisabState();
}

class _shop_hisabState extends State<shop_hisab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerapp(),
      appBar: AppBar(
        title: Text("Hisab"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  label: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Search"),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 130,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100]),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rs: 0",
                          style: TextStyle(color: Colors.red, fontSize: 30),
                        ),
                        Text(
                          "payable",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 130,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100]),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rs: 0",
                          style: TextStyle(color: Colors.green, fontSize: 30),
                        ),
                        Text(
                          "Recivable",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "3 Customer at this time",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/dp3.jpg",
                  height: 60,
                  width: 60,
                ),
                Container(
                  child: Column(
                    children: const [
                      Text("Ali Raza",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                      Text("aliraza23@gmail.com"),
                      Text(" pay=Rs: 1150",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          )),
                    ],
                  ),
                )
              ]),
            ),

            //card  2
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/dp2.jpg",
                  height: 60,
                  width: 60,
                ),
                Container(
                  child: Column(
                    children: const [
                      Text("Zain Naseer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                      Text("zainnaseer4234@gmail.com"),
                      Text(" pay=Rs: 6050",
                          style: TextStyle(
                            color: Colors.green,
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
                  "assets/dp1.jpg",
                  height: 60,
                  width: 60,
                ),
                Container(
                  child: Column(
                    children: const [
                      Text("Umair Farooq",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                      Text("umairfarooq@gmail.com"),
                      Text(" pay=Rs: 3050",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          )),
                    ],
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.grey,
                      content: Text(
                        "Your Customer is Added sucessfuly",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                },
                child: Text("Add Customer"))
          ],
        ),
      ),
    );
  }
}
