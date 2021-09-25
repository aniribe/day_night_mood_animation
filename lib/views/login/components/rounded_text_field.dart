import 'package:day_night_mood_animation/config/app_color.dart';
import 'package:day_night_mood_animation/config/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String initialValue;
  final String hintText;

  RoundedTextField({required this.initialValue, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(color: ColorConfig.whiteWithOpacity60),
        ),
        SizeConfig.verticalSpace(10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: ColorConfig.blackWithOpacity12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: ColorConfig.blackWithOpacity12,
            ),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: TextEditingController(text: initialValue),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
