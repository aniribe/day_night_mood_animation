import 'package:day_night_mood_animation/config/size_config.dart';
import 'package:flutter/cupertino.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: -65,
        child: Image.asset(
          "assets/images/land_tree_light.png",
          height: SizeConfig.getHeight(context) * 0.5,
          fit: BoxFit.fitHeight,
        ));
  }
}
