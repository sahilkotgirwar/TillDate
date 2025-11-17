//import 'package:backtopg/page/splash.dart';
import 'package:flutter/material.dart';
import 'package:backtopg/page/home_page.dart';
import 'package:backtopg/page/login_page.dart';
import 'package:backtopg/page/main_page.dart';
import 'package:backtopg/page/profile_page.dart';
import 'package:backtopg/styles/app_colour.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
