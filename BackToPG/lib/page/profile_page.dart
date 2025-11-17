import 'package:backtopg/styles/app_colour.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum ProfileMenu { Edit, Logout }

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 40),
        ),
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 25)),
          Align(
            alignment: Alignment.topLeft,
          ),
          Container(
            child: Image.asset('assets/temp/user1.png'),
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Text("Sahil Kotgirwar"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.amber,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Phome Number",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Text("8319061904"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
