import 'package:backtopg/styles/app_colour.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bus extends StatelessWidget {
  const Bus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Bus Services'),
        backgroundColor: AppColors.background,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image(
              image: AssetImage('assets/image/Bus.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Vit Bhopal University is located on the National Highway 86. After reaching the nearest Railway Station or Airport you can take the bus from the nearest location by searching on the given site',
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
                const link = 'https://www.redbus.com/';
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
              child: (Text('Search Buses')),
            )
          ],
        ),
      ),
    );
  }
}
