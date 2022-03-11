import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required this.icon,
    this.iconColor = const Color(0xFF756d54),
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.size = 40,
    this.iconSize = 0,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: iconSize == 0 ? Dimensions.iconSize20 : iconSize,
        color: iconColor,
      ),
    );
  }
}
