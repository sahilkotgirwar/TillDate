import 'package:backtopg/page/PG_list/maa_parvati.dart';
import 'package:backtopg/styles/app_colour.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 15),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/temp/2.jpg',
                  ),
                  height: 250,
                  width: 250,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.center,
                child: Text(
                  "Maa Parvati",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.background,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MaaParvati(),
                    ),
                  );
                },
                child: Text("Know More"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
