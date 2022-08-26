import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
      {Key? key,
      required this.text,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      required this.fontColor})
      : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: fontColor,
      ),
    );
  }
}
