import 'package:flutter/material.dart';

class Admin_drawer extends StatefulWidget {
  const Admin_drawer({Key? key}) : super(key: key);

  @override
  State<Admin_drawer> createState() => _Admin_drawerState();
}

class _Admin_drawerState extends State<Admin_drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Admin"),
              accountEmail: Text("alitradingcompany@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Text("DTI"),
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),

            //logout

            ListTile(
              leading: Icon(Icons.share),
              title: const Text(
                "Share",
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
