import 'package:digitaltechsindustry/Admin/admindrawer.dart';
import 'package:digitaltechsindustry/screen/markitingitem.dart';
import 'package:flutter/material.dart';

class Admin_dashboard extends StatefulWidget {
  const Admin_dashboard({Key? key}) : super(key: key);

  @override
  State<Admin_dashboard> createState() => _Admin_dashboardState();
}

class _Admin_dashboardState extends State<Admin_dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Admin_drawer(),
      appBar: AppBar(
        title: Text("Admin Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Column(children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "80",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Registerd User",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),

                //container 2
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange),
                    child: Column(children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "20",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Subscriber",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                )
              ],
            ),
            Text(
              "Recent Register Shop",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),

            //table data

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                width: 350,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(
                            0.0,
                            0.3,
                          ),
                          blurRadius: 6.0),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        borderOnForeground: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("ATC shop"),
                            Text("Lahore"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("In progress"),
                            ),
                            Text(
                              "80%",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),

                    //card 2
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        borderOnForeground: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("DTI shop"),
                            Text("Multan"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("In progress"),
                            ),
                            Text(
                              "40%",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      ),
                    ),

                    //card 3
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        borderOnForeground: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Tch shop"),
                            Text("Mirpur"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("In progress"),
                            ),
                            Text(
                              "60%",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),

                    //card 4
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        borderOnForeground: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("HT Shop"),
                            Text("Gujrat"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("In progress"),
                            ),
                            Text("70%")
                          ],
                        ),
                      ),
                    ),
                    //card 5
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        borderOnForeground: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("DMC Shop"),
                            Text("Sailkot"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("In progress"),
                            ),
                            Text(
                              "30%",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
                child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Marketing_item()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                      right: 30,
                      left: 15,
                    ),
                    child: Text("Monitor Shopes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
