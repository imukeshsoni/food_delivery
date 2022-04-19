import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final Color backgroundColor;
  final double size;

  AppIcon(
      {Key? key,
      required this.iconData,
      this.iconColor = const Color(0xFF756d54),
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.size = 40,
      this.iconSize = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: backgroundColor),
        child: Icon(
          iconData,
          color: iconColor,
          size: iconSize == 0 ? Dimensions.iconSize16 : iconSize,
        ));
  }
}
