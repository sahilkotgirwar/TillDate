import 'package:backtopg/styles/app_colour.dart';
import 'package:flutter/material.dart';

class MaaParvati extends StatelessWidget {
  const MaaParvati({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maa Parvati Prem Nivas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Maa Parvati is a comfortable and well maintained Paying Guest Accomodation located in a covenient area near VIT Bhopal University. They offer a variety of room options to suit your needs',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Address",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Pathar, Aara Mashi Road, Near Tanki Ground, Ashta , Madhya Pradesh'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Contact Information",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Phone Number: 8871584903",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Facilities",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("● 24/7 Electricity Supply"),
                Text("● 24/7 Clean water Supply"),
                Text("● Food would be provided"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rent Details",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "The Rent range from 6000 to 12000 rupees per month depenfing upon the room type chosen"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Gallery",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/image/maa_1.png',
                  height: 250,
                  width: 270,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/maa_2.png',
                  height: 250,
                  width: 250,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/maa_3.png',
                  height: 250,
                  width: 250,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/maa_4.png',
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ));
  }
}
