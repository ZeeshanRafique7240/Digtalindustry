import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class Cashinbtn extends StatefulWidget {
  const Cashinbtn({Key? key}) : super(key: key);

  @override
  State<Cashinbtn> createState() => _CashinbtnState();
}

class _CashinbtnState extends State<Cashinbtn> {
  TextEditingController cashincontroler = TextEditingController();
  GlobalKey _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerapp(),
      appBar: AppBar(title: const Text("Cash In")),
      body: Form(
        key: _key,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please Enter the Cash in amount",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: cashincontroler,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    print("please enter the Cash in Amount");
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("Enter Amount"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.grey,
                          content: Text(
                            "Your Cash Out is Added sucessfuly",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      );
                    },
                    child: const Text("Save")),
                ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
