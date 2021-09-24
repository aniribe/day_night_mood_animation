import 'package:day_night_mood_animation/config/app_color.dart';
import 'package:day_night_mood_animation/config/size_config.dart';
import 'package:day_night_mood_animation/views/login/components/sun.dart';
import 'package:day_night_mood_animation/views/login/components/tabs.dart';
import 'package:flutter/cupertino.dart';

import 'land.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isFullSun = false;
  bool isDayMood = true;
  Duration _duration = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isFullSun = true;
      });
    });
  }

  void changeMood(int activeTabNum) {
    if (activeTabNum == 0) {
      setState(() {
        isDayMood = true;
      });
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          isFullSun = true;
        });
      });
    } else {
      setState(() {
        isFullSun = false;
      });

      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          isDayMood = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
//    List<Color> lightBgColors = [
//      Color(0xFF8C2480),
//      Color(0xFFCE587D),
//      Color(0xFFFF9485),
//      if (isFullSun) Color(0xFFFF9D80),
//    ];

//    var darkBgColors = [
//      Color(0xFF0D1441),
//      Color(0xFF283584),
//      Color(0xFF376AB2),
//    ];

    return AnimatedContainer(
      duration: _duration,
      curve: Curves.easeInOut,
      width: double.infinity,
      height: SizeConfig.getHeight(context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDayMood
              ? ColorConfig.getLightBgColors(isFullSun)
              : ColorConfig.getDarkBgColors(),
        ),
      ),
      child: Stack(
        children: [
          Sun(duration: _duration, isFullSun: isFullSun),
          Land(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                children: [
                  SizeConfig.verticalSpace(50),
                  Tabs(press: (value) => changeMood(value)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
