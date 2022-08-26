import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Icon
        Container(
          constraints: const BoxConstraints(
            maxHeight: 50,
            maxWidth: 50,
            minHeight: 50,
            minWidth: 50,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Icon(icon),
        ),

        // Spacer
        const SizedBox(height: 10),

        // Text
        Text(text),
      ],
    );
  }
}
