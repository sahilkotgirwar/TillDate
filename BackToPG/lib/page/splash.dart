import 'package:flutter/material.dart';
import 'package:backtopg/styles/app_colour.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/image/logo.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
