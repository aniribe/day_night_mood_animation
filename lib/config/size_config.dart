import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double getHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static Widget horizontalSpace(double value) => SizedBox(width: value);

  static Widget verticalSpace(double value) => SizedBox(height: value);
}
