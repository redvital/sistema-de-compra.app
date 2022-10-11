import 'package:app_dynamics/ui/appTheme.dart';
import 'package:flutter/material.dart';

class CustomInputPage extends StatelessWidget {
  final String placeholder;
  final String textTitle;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInputPage(
      {super.key,
      required this.placeholder,
      required this.textTitle,
      required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: this.textController,
          autocorrect: false,
          keyboardType: this.keyboardType,
          obscureText: this.isPassword,
          decoration: InputDecortions.authInputDecoration(
              labelText: this.textTitle, hintText: this.placeholder),
        ),
      );
    });
  }
}
