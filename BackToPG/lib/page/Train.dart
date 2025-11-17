import 'package:backtopg/styles/app_colour.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Train extends StatelessWidget {
  const Train({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Train Services'),
        backgroundColor: AppColors.background,
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage('assets/image/Railway.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Vit Bhopal University is located on the National Highway 86.The three nearest railway station are Sehore Railway station (32 Km), Bhopal Railway station (67 Km) and Rani Kamlapati Railway Station (76 Km).',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                const link = 'https://www.irctc.co.in/nget/train-search';
                launchUrl(
                  Uri.parse(link),
                  mode: LaunchMode.inAppWebView,
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              child: (Text('Search Trains')),
            )
          ],
        ),
      ),
    );
  }
}
