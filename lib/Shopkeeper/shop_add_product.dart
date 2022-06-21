import 'package:digitaltechsindustry/screen/catagory.dart';
import 'package:digitaltechsindustry/screen/drawer.dart';

import 'package:flutter/material.dart';

class Add_product extends StatefulWidget {
  @override
  State<Add_product> createState() => _Add_productState();
}

class _Add_productState extends State<Add_product> {
  var vehicalsC = TextEditingController();
  var productName = TextEditingController();
  var priceC = TextEditingController();
  var weight = TextEditingController();
  var quantity = TextEditingController();
  var onsale = TextEditingController();
  bool isSale = true;
  final _key = GlobalKey<FormState>();
  // List<Asset> images = <Asset>[];
  save() {
    bool isValidate = _key.currentState!.validate();
    if (isValidate) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Products"),
      ),
      drawer: drawerapp(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
            key: _key,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3)),
                  child: DropdownButtonFormField(
                    validator: (value) {
                      if (value == null) {
                        return "should not empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    //value: vehicles[1].name,
                    hint: Text("Select Catagories"),
                    items: vehicles
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.name,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(e.name),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        vehicalsC.text;
                        print(vehicalsC.text);
                      });
                    },
                  ),
                ),

                //textformfelid 2
                Editfield(
                  validator: (value) {
                    if (value == null) {
                      return "should not be empty";
                    }
                    return null;
                  },
                  controller: productName,
                  hint: "Enter Product Name",
                  onsubmit: (value) {
                    setState(() {
                      productName.text = value;
                    });
                  },
                ),
                //3
                Editfield(
                  validator: (value) {
                    if (value == null) {
                      return "should not be empty";
                    }
                    return null;
                  },
                  controller: priceC,
                  hint: "Enter Product Price",
                  onsubmit: (value) {
                    setState(() {
                      priceC.text = value;
                    });
                  },
                ),
                //4
                Editfield(
                  validator: (value) {
                    if (value == null) {
                      return "should not be empty";
                    }
                    return null;
                  },
                  controller: weight,
                  hint: "Enter Product weight",
                  onsubmit: (value) {
                    setState(() {});
                  },
                ),

                //5
                Editfield(
                  validator: (value) {
                    if (value == null) {
                      return "should not be empty";
                    }
                    return null;
                  },
                  controller: quantity,
                  hint: "Enter Product quantity",
                  onsubmit: (value) {
                    setState(() {
                      quantity.text = value;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Pick Image")),
                Expanded(child: buildGridView()),
                //6
                SwitchListTile(
                    title: const Text('Is on Sale'),
                    value: isSale,
                    onChanged: (v) {
                      setState(() {
                        isSale = v;
                      });
                    }),

                MaterialButton(
                  shape: StadiumBorder(side: BorderSide.none),
                  onPressed: () {
                    save();
                  },
                  child: const Text(
                    "Upload Product",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blue,
                )
              ],
            )),
      ),
    );
  }

  // loadAsset() async {
  //   List<Asset> resultImages = <Asset>[];
  //   String error = "something went wrong";
  //   try {
  //     resultImages = await MultiImagePicker.pickImages(
  //       maxImages: 10,
  //       enableCamera: true,
  //       selectedAssets: images,
  //     );
  //     setState(() {
  //       images = resultImages;
  //     });
  //   } catch (e) {
  //     error = e.toString();
  //     print(error);
  //   }
  // }

  Widget buildGridView() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }
}

class Editfield extends StatelessWidget {
  TextEditingController controller;
  String hint;
  Function onsubmit;
  Function validator;
  Editfield(
      {Key? key,
      required this.hint,
      required this.onsubmit,
      required this.controller,
      required this.validator})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.3)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "shouuld not be empty";
              }
            },
            controller: controller,
            onFieldSubmitted: (value) => onsubmit,
            decoration: InputDecoration(
              hintText: hint,
              //prefixIcon: Icon(prifixIcon),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
