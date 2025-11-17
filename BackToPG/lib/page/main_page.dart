import 'package:backtopg/page/Bus.dart';
import 'package:backtopg/page/Flight.dart';
import 'package:backtopg/page/Train.dart';
import 'package:backtopg/page/home_page.dart';
import 'package:backtopg/page/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bus_alert_outlined,
                color: Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.train,
                color: Colors.black,
              ),
              label: 'Train'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplanemode_active,
                color: Colors.black,
              ),
              label: 'Airplane'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.black,
              ),
              label: 'Profile'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Bus(),
    Train(),
    FlightPage(),
    ProfilePage(),
  ];
}
