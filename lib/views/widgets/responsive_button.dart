import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final IconData icon;

  const ResponsiveButton.withIcon(
      {Key? key, required this.text, required this.icon, this.fontSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(),
      onPressed: () {},
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 110,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            Text(
              text,
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
