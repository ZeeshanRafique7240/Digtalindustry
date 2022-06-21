import 'package:digitaltechsindustry/auth/shopkeeper_login.dart';
import 'package:digitaltechsindustry/auth/shopkeeper_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Shop_Forgetpassword extends StatefulWidget {
  const Shop_Forgetpassword({Key? key}) : super(key: key);

  @override
  State<Shop_Forgetpassword> createState() => _Shop_ForgetpasswordState();
}

class _Shop_ForgetpasswordState extends State<Shop_Forgetpassword> {
  final _formkey = GlobalKey<FormState>();
  var email = "";

  final emailcontroler = TextEditingController();

  resetpassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "password reset email has been sent",
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No user found for this email");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "No user found for this email",
              style: TextStyle(fontSize: 15),
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
        title: Text("Forget_password"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Reset link will be sent your email id",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Expanded(
            child: Form(
              key: _formkey,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: "email",
                          labelStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        controller: emailcontroler,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter the email";
                          } else if (!value.contains('@')) {
                            return "please enter the correct email";
                          }
                          return null;
                        },
                      ),
                    ),

                    //button

                    Container(
                      margin: EdgeInsets.only(left: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                setState(() {
                                  email = emailcontroler.text;
                                });
                                resetpassword();
                              }
                            },
                            child: Text("send email"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (context, a, b) =>
                                          Shop_login(),
                                      transitionDuration: Duration(seconds: 0)),
                                  (route) => false);
                            },
                            child: Text("Login"),
                          ),
                        ],
                      ),
                    ),

                    //button

                    Container(
                      child: Row(
                        children: [
                          Text("Dont have a Account"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: (context, a, b) =>
                                            Shop_signUp(),
                                        transitionDuration:
                                            Duration(seconds: 0)),
                                    (route) => false);
                              },
                              child: Text("SignUp"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
