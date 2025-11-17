import 'package:flutter/material.dart';

class Kesariya extends StatelessWidget {
  const Kesariya({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('name'),
              SizedBox(width: 20),
              Text(
                'Kesriya Pg Kothri',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
}
