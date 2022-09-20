import 'package:flutter/material.dart';
import 'package:travel_blog/model/travel.dart';
import 'package:travel_blog/style/color.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;
  final double expandedHeight = 300;
  final double roundedContainerHeight = 50;
  DetailPage({required this.travel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [
            _buildBackground(),
            SliverToBoxAdapter(
              child: _buildDetail(),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, right: 15, left: 15),
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white)),
                Icon(Icons.menu, color: Colors.white),
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget _buildBackground() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
            travel: travel,
            expandedHeight: expandedHeight,
            roundedContainerHeight: roundedContainerHeight));
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildUserInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              'The road to the tea hill is a beautiful natural scenery. Which any visitor could not help but admire and praise. The tea hill in Dalat has an acreage of ​​about 220 hectares. This place is not only an ideal tourist attraction in Dalat, but also a witness of history.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                height: 1.5,
                fontFamily: "Merriweather",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // 2 children with 2 buttons Added & Plan Now
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: AppColors.darkPurple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Add to Plan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather"),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Plan Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 160, child: FeaturedWidget()),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              travel.url,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  travel.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather",
                  ),
                ),
                Text(
                  travel.location,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.darkPurple,
                    fontFamily: "Merriweather",
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.share,
            color: AppColors.darkPurple,
          )
        ],
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Travel travel;
  final double expandedHeight;
  final double roundedContainerHeight;
  DetailSliverDelegate(
      {required this.travel,
      required this.expandedHeight,
      required this.roundedContainerHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(travel.url,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover),
        ),
        Positioned(
          top: expandedHeight - roundedContainerHeight - shrinkOffset,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),
        Positioned(
            top: expandedHeight - shrinkOffset - 120,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(travel.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Merriweather",
                    )),
                Text(
                  travel.location,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Merriweather",
                  ),
                )
              ],
            ))
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class FeaturedWidget extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(Object context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return Container(
            width: 120,
            child: Image.asset(travel.url, fit: BoxFit.cover),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 10),
        itemCount: _list.length);
  }
}
