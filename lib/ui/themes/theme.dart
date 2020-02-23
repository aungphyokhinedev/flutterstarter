import 'package:flutter/material.dart';

enum ThemeKeys { LIGHT, DARK, DARKER }

class Themes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blueGrey,
    accentColor: Colors.black12,
    buttonColor: Colors.white,

  //  buttonTheme: ButtonThemeData(buttonColor: Colors.white),

    backgroundColor: Colors.white,
    // Define the default font family.
    // fontFamily: 'Montserrat',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      title: TextStyle(fontWeight: FontWeight.w400),
      body1: TextStyle(color: Colors.black45),
      body2: TextStyle(color: Colors.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.orange,
    accentColor: Colors.white10,
    canvasColor: Colors.grey[850],
    buttonColor: Colors.orange,
//cardColor:  Color(0xFF434949),
    buttonTheme: ButtonThemeData(buttonColor: Colors.white30),
    iconTheme: IconThemeData(color: Colors.white24),
    backgroundColor: Colors.blueGrey,
    // Define the default font family.
    //   fontFamily: 'Montserrat',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
      title: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      body1: TextStyle(color: Colors.white38),
      body2: TextStyle(color: Colors.white),
    ),
  );

  static final ThemeData darkerTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red[800],
    accentColor: Colors.white10,
    buttonTheme: ButtonThemeData(buttonColor: Colors.white30),
    canvasColor: Color(0xFF000000),
    buttonColor: Colors.orange,
    iconTheme: IconThemeData(color: Colors.white24),
    backgroundColor: Colors.blueGrey,

    // Define the default font family.
    // fontFamily: 'Montserrat',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
      title: TextStyle(color: Colors.white70),
      body1: TextStyle(color: Colors.white38),
      body2: TextStyle(color: Colors.white),
    ),
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.LIGHT:
        return lightTheme;
      case ThemeKeys.DARK:
        return darkTheme;
      case ThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }

  static Map<String, ThemeKeys> get themes => {
        "Light Theme": ThemeKeys.LIGHT,
        "Dark Theme": ThemeKeys.DARK,
        "Darker Theme": ThemeKeys.DARKER,
      };
}
