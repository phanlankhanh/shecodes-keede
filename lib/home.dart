import 'package:flutter/material.dart';
import 'package:travel_blog/style/color.dart';
import 'package:travel_blog/widgets/recommend.dart';

import 'widgets/top_recommend.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        leading: Icon(
          Icons.menu,
          color: AppColors.purple,
        ),
        title: Container(
            width: 160,
            child: Image.asset('assets/images/white_logo.png',
                 fit: BoxFit.cover),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.account_circle_rounded, color: AppColors.purple,size: 35,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: topRec()),
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
                  style: TextStyle(fontSize: 16, color: AppColors.purple),
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
