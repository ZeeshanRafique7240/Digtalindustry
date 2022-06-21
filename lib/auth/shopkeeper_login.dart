import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_bottombar.dart';

import 'package:digitaltechsindustry/auth/shop_forgetpass.dart';
import 'package:digitaltechsindustry/auth/shopkeeper_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Shop_login extends StatefulWidget {
  const Shop_login({Key? key}) : super(key: key);

  @override
  State<Shop_login> createState() => _Shop_loginState();
}

class _Shop_loginState extends State<Shop_login> {
  final _formkey = GlobalKey<FormState>();

  var email = "";
  var passowrd = "";

  final emailcontroler = TextEditingController();
  final passwordcontroler = TextEditingController();

  final Storage = new FlutterSecureStorage();

  shopkeeperLogin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passowrd);
      //print(userCredential.user?.uid);

      await Storage.write(key: "uid", value: userCredential.user?.uid);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Shop_bottombar()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "No Shopkeeper found for this Email",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Wrong password provided by Shopkeeper",
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
        title: Text("Shopkeeper Login"),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              Image.asset(
                "assets/loginimage.png",
                height: 150,
                width: 150,
              ),
              //Email Formfield

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
                    prefixIcon: Icon(Icons.password_outlined),
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
                ),
              ),

              //button Container

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
                        shopkeeperLogin();
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Shop_Forgetpassword())),
                      },
                  child: Text(
                    "Forget Passowrd?",
                    style: TextStyle(fontSize: 20),
                  )),

              //textcontainer

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have a Account"),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Shop_signUp()))
                          },
                      child: Text("SignUp"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
