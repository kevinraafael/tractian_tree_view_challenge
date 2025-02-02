import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconWidget extends StatelessWidget {
  final String icon;
  final BoxFit? fit;
  final Color? color;
  final double height;
  final double width;

  const AppIconWidget(
    this.icon, {
    super.key,
    this.fit,
    this.color,
    this.width = 18.0,
    this.height = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      fit: fit ?? BoxFit.cover,
      width: width,
      height: height,
    );
  }
}
