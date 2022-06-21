import 'package:digitaltechsindustry/Admin/adminsignin.dart';
import 'package:digitaltechsindustry/auth/customer_login.dart';
import 'package:digitaltechsindustry/auth/shopkeeper_login.dart';
import 'package:digitaltechsindustry/screen/markitingitem.dart';
import 'package:flutter/material.dart';

class Chose_option extends StatefulWidget {
  const Chose_option({Key? key}) : super(key: key);

  @override
  State<Chose_option> createState() => _Chose_optionState();
}

class _Chose_optionState extends State<Chose_option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              const Center(
                  child: Text(
                "What Would you like to do?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Marketing_item()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "  Go shopping",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.shopping_bag)),
                        ],
                      ),
                    ),
                  ),
                  //

                  const SizedBox(
                    width: 10,
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shop_login()));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Build My",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Shop",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.store)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Admin_Signin()));
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Admin",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.admin_panel_settings)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
