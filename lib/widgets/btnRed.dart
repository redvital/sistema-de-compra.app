import 'package:flutter/material.dart';

class ButtonRed extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ButtonRed({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(211, 196, 19, 19),
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 55,
          child: Center(
            child: Text(this.text,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
        onPressed: this.onPressed);
  }
}
