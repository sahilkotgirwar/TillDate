import 'package:backtopg/styles/app_colour.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Air Services'),
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
              image: AssetImage('assets/image/Flight.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Vit Bhopal University is located on the National Highway 86. Located 65km from Raja Bhoj Airport (Bhopal) and 137km from Devi Ahilya Bai Holkar airport (Indore). You can book your airplane tickets by clicking the button below.',
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
                const link = 'https://www.skyscanner.co.in/';
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
              child: (Text('Search Flights')),
            )
          ],
        ),
      ),
    );
  }
}
