import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String titleText;
  final FontWeight titleFontWeight;
  final double titleFontSize;
  final Color titleColor;
  final String subtitleText;
  final FontWeight subtitleFontWeight;
  final double subtitleFontSize;
  final Color subtitleColor;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.titleText,
    this.titleFontWeight = FontWeight.bold,
    required this.titleFontSize,
    this.titleColor = Colors.black,
    required this.subtitleText,
    this.subtitleFontWeight = FontWeight.normal,
    required this.subtitleFontSize,
    this.subtitleColor = Colors.black54,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Icon
        Container(
          constraints: const BoxConstraints(
            maxHeight: 60,
            maxWidth: 60,
            minHeight: 60,
            minWidth: 60,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Icon(icon),
        ),

        // Spacer
        const SizedBox(width: 15),

        // Name

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              titleText,
              style: TextStyle(
                fontWeight: titleFontWeight,
                fontSize: titleFontSize,
                color: titleColor,
              ),
            ),

            // Subtitle
            Text(
              subtitleText,
              style: TextStyle(
                fontWeight: subtitleFontWeight,
                fontSize: subtitleFontSize,
                color: subtitleColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
