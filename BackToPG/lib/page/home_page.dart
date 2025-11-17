import 'package:backtopg/widgets/ListWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(
              children: [
                ListWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

 
 
 
 
 
 
 
 
 
  /* Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/image/OTP.png',
          width: 90,
          height: 90,
        ),
        const SizedBox(
          width: 16,
        ),
        const Text('Ganesh Mare')
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i <= 20; i++) {
      users.add(_userItem());
    }
    return users;
  }
  */

