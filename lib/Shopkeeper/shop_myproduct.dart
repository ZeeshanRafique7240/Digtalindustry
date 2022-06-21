import 'package:digitaltechsindustry/Shopkeeper/shop_add_product.dart';
import 'package:flutter/material.dart';

class My_product extends StatefulWidget {
  const My_product({Key? key}) : super(key: key);

  @override
  State<My_product> createState() => _My_productState();
}

class _My_productState extends State<My_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 150,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Add_product()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text("My Product"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Add Your products and varients"),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Add_product()));
                },
                child: const Text(
                  "Add Products",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Products"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "7 Total Products",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.filter),
              ],
            ),

            //card1
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/headset.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("Headset",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-5 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 350",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            //card 2
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/charger.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("charger",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-7 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 250",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            //card 3
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/handfree.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("handfree",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-3 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 150",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            //card 4
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/laptop3.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("Laptop",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-5 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 15550",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            //card 5
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/headset.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("Charger",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-1 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 150",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            //card 6
            Card(
              child: Row(children: [
                Image.asset(
                  "assets/protector.jpg",
                  height: 80,
                  width: 80,
                ),
                Column(
                  children: const [
                    Text("Secreen protector",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "-1 itemleft",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text("Rs: 150",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                )
              ]),
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   backgroundColor: Colors.blue,
            //   elevation: 0.0,
            //   child: new Icon(Icons.add),
            // ),
          ],
        ),
      ),
    );
  }
}
