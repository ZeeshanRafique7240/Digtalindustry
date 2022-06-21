import 'package:digitaltechsindustry/Admin/admin_dashboard.dart';
import 'package:digitaltechsindustry/Customer/customer_bottombar.dart';
import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_bottombar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Admin_Signin extends StatefulWidget {
  const Admin_Signin({Key? key}) : super(key: key);

  @override
  State<Admin_Signin> createState() => _Admin_SigninState();
}

class _Admin_SigninState extends State<Admin_Signin> {
  final _formkey = GlobalKey<FormState>();
  var email = "";
  var passowrd = "";

  final emailcontroler = TextEditingController();
  final passwordcontroler = TextEditingController();

  // ignore: non_constant_identifier_names
  final Storage = const FlutterSecureStorage();

  adminlogin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passowrd);
      //print(userCredential.user?.uid);

      await Storage.write(key: "uid", value: userCredential.user?.uid);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Admin_dashboard()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        //print("No user found for this email");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "No user found for this email",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        //print("wrong password provided by user");

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "wrong password provided by user",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Registration"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [Colors.blue, Colors.white]),
            ),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/loginimage.png",
                height: 150,
                width: 150,
              ),

              //email container formfield

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: emailcontroler,
                  autofocus: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      prefixIconColor: Colors.blue,
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 20)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter the password";
                    } else if (!value.contains('@')) {
                      return "please enter the valid email";
                    }
                    return null;
                  },
                ),
              ),

              //password container formfield

              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Colors.blue,
                      labelText: "password",
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 20),
                    ),
                    controller: passwordcontroler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please Enter the password";
                      }
                      return null;
                    },
                  )),

              const SizedBox(
                height: 10,
              ),

              //LOGIN button

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          email = emailcontroler.text;
                          passowrd = passwordcontroler.text;
                        });
                        adminlogin();
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                        right: 30,
                        left: 15,
                      ),
                      child: Text("Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),

              //textcontainer
            ],
          ),
        ),
      ),
    );
  }
}
