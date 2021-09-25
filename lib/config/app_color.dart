import 'dart:ui';

class ColorConfig {
  static Color white = Color(0xFFFFFFFF);

  static Color black = Color(0xFF000000);

  static Color whiteWithOpacity24 = Color(0xFFFFFFFF).withOpacity(0.2);

  static Color whiteWithOpacity60 = Color(0xFFFFFFFF).withOpacity(0.6);

  static Color blackWithOpacity12 = Color(0xFF000000).withOpacity(0.12);

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
