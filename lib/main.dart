// ignore_for_file: deprecated_member_use

import 'package:digitaltechsindustry/Shopkeeper/Shop_dashboard.dart';
import 'package:digitaltechsindustry/Shopkeeper/shop_bottombar.dart';
import 'package:digitaltechsindustry/screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Future exitDialoge() {
  //   return showDialog(
  //       context: context,ss
  //       builder: (context) =>  AlertDialog(
  //             title: Text("Are you Sure"),
  //             content: Text("Do You Want to exit from the app?"),
  //             actions: [
  //               FlatButton(onPressed: (){}, child: Text('Exit')),
  //               FlatButton(onPressed: (){}, child: Text('')),
  //             ],
  //           ));
  // }

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final storage = new FlutterSecureStorage();

  Future<bool> checkLoginStatus() async {
    String? value = await storage.read(key: "uid");
    if (value == null) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            title: 'Flutter Firebase EMail Password Auth',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity),
            debugShowCheckedModeBanner: false,
            home: FutureBuilder(
                future: checkLoginStatus(),
                builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
                  if (snapshot.data == false) {
                    return Splash_screen();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                        color: Colors.white,
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return Shop_bottombar();
                }),
          );
        });
  }
}
