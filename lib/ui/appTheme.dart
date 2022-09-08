import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 183, 58, 58);
  static const Color iconos = Color.fromARGB(255, 110, 37, 37);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.amber,

      //AppBar
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),
      //Boton flotante
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      //boton elevado
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.amber, shape: const StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          //cuando el el foco lo tiene el input
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.white,
      //AppBar
      appBarTheme: const AppBarTheme(color: iconos, elevation: 0));
}

class InputDecortions {
  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon}) {
    return InputDecoration(

        //esto es para que la raya tega otro color
        focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 183, 58, 58), width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Color.fromARGB(255, 110, 37, 37)),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: Color.fromARGB(255, 180, 50, 50),
              )
            : null);
  }
}
