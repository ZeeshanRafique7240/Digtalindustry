import 'package:flutter/material.dart';

class Sales_report extends StatefulWidget {
  const Sales_report({Key? key}) : super(key: key);

  @override
  State<Sales_report> createState() => _Sales_reportState();
}

class _Sales_reportState extends State<Sales_report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sales report"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 100,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Name or Mobile Number'),
              ),
            ),

            //container 2 payable or recive able

            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink),
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Text("RS:0"),
                      Text("Payable"),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("RS:2,000"),
                      Text("reciveable"),
                    ],
                  ),
                )
              ],
            ),
            Text("2 Customer"),
            Card(
              child: ListTile(
                leading: Icon(Icons.safety_divider),
                title: Text("Zeeshan rafique"),
                subtitle: Text(" days late"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Row(
                children: const [
                  ListTile(
                    leading: Icon(Icons.safety_divider),
                    title: Text(
                      "Zeeshan rafique",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      "4b days late",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
