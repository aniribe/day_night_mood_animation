import 'dart:ui';

class ColorConfig {
  static List<Color> getLightBgColors(bool isFullSun) {
    return [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
      if (isFullSun) Color(0xFFFF9D80),
    ];
  }

  static List<Color> getDarkBgColors() {
    return [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
  }
}
