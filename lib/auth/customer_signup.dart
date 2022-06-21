import 'package:digitaltechsindustry/auth/customer_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class customer_signup extends StatefulWidget {
  const customer_signup({Key? key}) : super(key: key);

  @override
  State<customer_signup> createState() => _customer_signupState();
}

class _customer_signupState extends State<customer_signup> {
  final _formkey = GlobalKey<FormState>();
  var email = "";
  var paassword = "";
  var confirmpassword = "";

  // used text controler

  final emailcontroler = TextEditingController();
  final passwordcontroler = TextEditingController();
  final confirmpass = TextEditingController();

  registration() async {
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
            builder: (context) => const Customer_login(),
          ),
        );

        //weak passowrd

      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          // ignore: avoid_print
          print("passowrd provided is too weak");

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
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
      appBar: AppBar(title: const Text("Customer_SignUp")),
      body: Container(
        decoration: const BoxDecoration(),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
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
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
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
                    prefixIcon: Icon(Icons.password_rounded),
                    prefixIconColor: Colors.blue,
                    labelText: " Confirm Password",
                    labelStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
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
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          email = emailcontroler.text;
                          paassword = passwordcontroler.text;
                          confirmpassword = confirmpass.text;
                        });
                        registration();
                      }
                    },
                    child: const Text("SignUp",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),

              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: Text("Already have a Account?")),
                  ),
                  TextButton(
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Customer_login())),
                          },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
