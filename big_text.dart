import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  const BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
  }) : super(key: key);

  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.bigTextFontSize20 : size,
        fontFamily: 'Roboto',
        overflow: overflow,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
