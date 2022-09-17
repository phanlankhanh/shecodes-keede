import 'package:flutter/material.dart';
import 'package:travel_blog/style/color.dart';
import 'package:travel_blog/widgets/recommend.dart';

import 'widgets/top_recommend.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.menu,
                  color: AppColors.purple,
                ),
                // SvgPicture.asset(''),
                Image.asset('assets/images/ktext.png',
                    width: 160, fit: BoxFit.cover),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Image.asset('assets/images/klogo.png', width: 100, fit: BoxFit.cover),
          //   // child: Text(
          //   //   'Keede',
          //   //   style: TextStyle(fontSize: 36),
          //   // ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10),
          //   child:
          // )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: TravelBlog()),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      ),
    );
  }
}
