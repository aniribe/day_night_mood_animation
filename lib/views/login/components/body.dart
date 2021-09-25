import 'package:day_night_mood_animation/config/app_color.dart';
import 'package:day_night_mood_animation/config/size_config.dart';
import 'package:day_night_mood_animation/views/login/components/rounded_text_field.dart';
import 'package:day_night_mood_animation/views/login/components/sun.dart';
import 'package:day_night_mood_animation/views/login/components/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizeConfig.verticalSpace(50),
                  Tabs(press: (value) => changeMood(value)),
                  SizeConfig.verticalSpace(25),
                  Text(
                    "Good Morning",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: ColorConfig.white),
                  ),
                  SizeConfig.verticalSpace(10),
                  Text(
                    "Enter your Informations below",
                    style: TextStyle(color: ColorConfig.white),
                  ),
                  SizeConfig.verticalSpace(50),
                  RoundedTextField(
                    initialValue: "your@email.com",
                    hintText: "Email",
                  ),
                  SizeConfig.verticalSpace(25),
                  RoundedTextField(
                    initialValue: "XXXXXXX",
                    hintText: "Password",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
