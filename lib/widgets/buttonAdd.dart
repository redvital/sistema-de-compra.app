import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color textColor;
  final Color BackgroundColor;

  final String text;
  final IconData icon;
  final double size;

  const AppButtons(
      {super.key,
      required this.textColor,
      required this.BackgroundColor,
      required this.text,
      required this.icon,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0,
      height: size,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
      decoration: BoxDecoration(
        color: BackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
