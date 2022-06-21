import 'package:digitaltechsindustry/screen/drawer.dart';
import 'package:flutter/material.dart';

class cashoutbtn extends StatefulWidget {
  const cashoutbtn({Key? key}) : super(key: key);

  @override
  State<cashoutbtn> createState() => _cashoutbtnState();
}

class _cashoutbtnState extends State<cashoutbtn> {
  TextEditingController cashout = TextEditingController();
  GlobalKey _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const drawerapp(),
      appBar: AppBar(title: Text("Cash Out")),
      body: Form(
        key: _key,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please Enter the Cash Out Amount",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: cashout,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    "please Enter the Cashout Amount";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  label: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Enter Amount"),
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
