import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Sun extends StatelessWidget {
  final Duration duration;
  final bool isFullSun;

  Sun({required this.duration, required this.isFullSun});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration,
      curve: Curves.easeInOut,
      left: 30,
      bottom: isFullSun ? -45 : -120,
      child: SvgPicture.asset("assets/icons/Sun.svg"),
    );
  }
}
