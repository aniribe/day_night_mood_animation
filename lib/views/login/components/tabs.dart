import 'package:day_night_mood_animation/config/app_color.dart';
import 'package:day_night_mood_animation/config/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final ValueChanged<int> press;

  Tabs({required this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.getWidth(context) * 0.8,
      decoration: BoxDecoration(
        color: ColorConfig.whiteWithOpacity24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(text: "Morning Login"),
            Tab(text: "Night Login"),
          ],
          onTap: press,
        ),
      ),
    );
  }
}
