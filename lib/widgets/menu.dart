import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../style/color.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        // height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 20,
                  // child: SvgPicture.asset('assets/menuicon.svg'),
                ),
              ),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/home.svg',
                    color: AppColors.primaryGreen,
                  ),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/tune.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/leaderboard.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/settings.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/power.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
