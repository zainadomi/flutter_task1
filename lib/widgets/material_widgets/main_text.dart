import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MainText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? textOverflow;
  final TextDecoration? underline;

  const MainText({super.key, required this.text, this.fontSize, this.fontWeight, this.color, this.textAlign, this.maxLine, this.textOverflow, this.underline});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLine,
      textAlign: textAlign,
      style: TextStyle(
        decoration: underline ?? TextDecoration.none,
        color: color,
        fontSize: fontSize ?? Get.width * 0.035,
        fontWeight: fontWeight,
      ),

    );
  }
}