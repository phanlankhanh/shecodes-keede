import 'package:flutter/material.dart';
import 'package:travel_blog/style/color.dart';
import 'package:travel_blog/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.purple,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/vuon-hoa-cam-tu-cau-da-lat-1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'New way\nto plan your trip',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Merriweather',
                          color: AppColors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Create a fully customized day by day\nitinerary for free!',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontFamily: 'Merriweather',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text('Let’s go →'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkPurple,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.values[5],
                          fontFamily: 'Source Sans Pro',
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(17)), // <-- Radius
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
