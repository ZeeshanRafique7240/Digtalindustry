import 'package:digitaltechsindustry/Shopkeeper/Shop_viewOrder.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_cashin.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_cashout.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_createbill.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_hisab.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_myproduct.dart';

import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class shop_dashboard extends StatefulWidget {
  const shop_dashboard({Key? key}) : super(key: key);

  @override
  State<shop_dashboard> createState() => _shop_dashboardState();
}

class _shop_dashboardState extends State<shop_dashboard> {
  int _currentIndex = 0;
  //final colorScheme = Theme.of(context).colorScheme;
  //final textTheme = Theme.of(context).textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerapp(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ali Trading company"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add))
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Material(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(
                                  0.0,
                                  0.3,
                                ),
                                blurRadius: 6.0)
                          ]),
                      height: 160,
                      width: 350,
                      child: Column(
                        children: [
                          const Text(
                            "Rs: 0",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Add funds to your wallet",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                          // cash in cashout

                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Shop_cash_in(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 70,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Text(
                                        "Cash In",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.green),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Shop_cash_out(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 70,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Cash out",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  //container 2

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        // create bills
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const createbill()));
                          },
                          child: Container(
                            height: 150,
                            width: 165,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(
                                        0.0,
                                        0.3,
                                      ),
                                      blurRadius: 6.0)
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/invoice.png",
                                    height: 50,
                                  ),
                                ),
                                const Text(
                                  "Create Bills",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Create POS bills and",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ),
                                const Text(
                                  " send invoice",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // my product
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const My_product()));
                        },
                        child: Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(
                                    0.0,
                                    0.3,
                                  ),
                                  blurRadius: 6.0),
                            ],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/myitemss.png",
                                  height: 50,
                                ),
                              ),
                              const Text(
                                "My Product",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Add Product & varients",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.orange),
                              ),
                              const Text(
                                " add and update stock",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //row 2
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        // create bills
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Shop_View_order()));
                          },
                          child: Container(
                            height: 150,
                            width: 165,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(
                                        0.0,
                                        0.3,
                                      ),
                                      blurRadius: 6.0)
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/orderview.png",
                                    height: 50,
                                  ),
                                ),
                                const Text(
                                  "View Order",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  " Manage and View ",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ),
                                const Text(
                                  " Order",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Hisab
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const shop_hisab()));
                        },
                        child: Container(
                          height: 150,
                          width: 165,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(
                                      0.0,
                                      0.3,
                                    ),
                                    blurRadius: 6.0)
                              ]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/hisab.png",
                                  height: 50,
                                ),
                              ),
                              const Text(
                                "Hisab",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Use Khata regeister",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.orange),
                              ),
                              const Text(
                                "  and view sales reports",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const shop_hisab()));
                    },
                    child: Container(
                      height: 150,
                      width: 165,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(
                                  0.0,
                                  0.3,
                                ),
                                blurRadius: 6.0)
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/hisab.png",
                              height: 50,
                            ),
                          ),
                          const Text(
                            "sales report",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Use Khata regeister",
                            style:
                                TextStyle(fontSize: 15, color: Colors.orange),
                          ),
                          const Text(
                            "  and view sales reports",
                            style:
                                TextStyle(fontSize: 15, color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
