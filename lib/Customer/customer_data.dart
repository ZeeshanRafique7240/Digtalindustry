import 'package:flutter/material.dart';

class Customer_Data extends StatefulWidget {
  const Customer_Data({Key? key}) : super(key: key);

  @override
  State<Customer_Data> createState() => _Customer_DataState();
}

class _Customer_DataState extends State<Customer_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Customer"),
      ),
      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Customer Name"),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),

        //
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Customer Mobile Number"),
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),

        //
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Customer Address"),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {},
              child: const Text(
                "Save Data",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
