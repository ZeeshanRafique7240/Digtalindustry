import 'package:digitaltechsindustry/auth/shopkeeper_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Shop_signUp extends StatefulWidget {
  const Shop_signUp({Key? key}) : super(key: key);

  @override
  State<Shop_signUp> createState() => _Shop_signUpState();
}

// ignore: camel_case_types
class _Shop_signUpState extends State<Shop_signUp> {
  final _formkey = GlobalKey<FormState>();
  var email = "";
  var shopname = "";
  var shopaddress = "";
  var paassword = "";
  var confirmpassword = "";

  // used text controler

  final emailcontroler = TextEditingController();
  final shopnamecontroler = TextEditingController();
  final shopaddresscontroler = TextEditingController();
  final passwordcontroler = TextEditingController();
  final confirmpass = TextEditingController();

  shopregistration() async {
    if (paassword == confirmpassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: paassword);
        print(userCredential);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registration Sucessfuly Login",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Shop_login(),
          ),
        );

        //weak passowrd

      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("passowrd provided is too weak");

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "passowrd provided is too weak",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        }

        //Email allready in used

        else if (e.code == 'email-already-in-use') {
          print("Account already exists");

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Account already exists",
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        }
      }
    } else {
      print("password and confirm password doesn't match");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(
            "Password and Confirm password doesn't match",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopkeeper Registration"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            Image.asset(
              "assets/loginimage.png",
              height: 150,
              width: 150,
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  prefixIconColor: Colors.blue,
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                controller: emailcontroler,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter the Email";
                  } else if (!value.contains("@")) {
                    return "please enter the correct email";
                  }
                  return null;
                },
              ),
            ),

            //shop name

            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  prefixIconColor: Colors.blue,
                  labelText: "Shop Name",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: shopnamecontroler,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please Enter the Shop Name";
                  }
                  return null;
                },
              ),
            ),

            //shop Address
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  prefixIconColor: Colors.blue,
                  labelText: "Shop Address",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: shopaddresscontroler,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please Enter the Shop Address";
                  }
                  return null;
                },
              ),
            ),

            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: TextFormField(
                obscureText: true,
                autofocus: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.blue,
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
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

            //confirm password

            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: TextFormField(
                obscureText: true,
                autofocus: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  prefixIconColor: Colors.blue,
                  labelText: " Confirm password",
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                controller: confirmpass,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please Enter the Confirm password";
                  }
                  return null;
                },
              ),
            ),

            // button

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = emailcontroler.text;
                        shopname = shopnamecontroler.text;
                        shopaddress = shopaddresscontroler.text;
                        paassword = passwordcontroler.text;
                        confirmpassword = confirmpass.text;
                      });
                      shopregistration();
                    }
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Text("Already have a Account?")),
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Shop_login())),
                          },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
