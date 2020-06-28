import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  ThemeData get themeData {
    TextTheme txtTheme =
        GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme);
    Color txtColor = txtTheme.bodyText1.color;
    ColorScheme colorScheme = ColorScheme(
      primary: Colors.deepPurple[900],
      primaryVariant: Colors.deepPurple[900],
      secondary: Colors.deepPurple[900],
      secondaryVariant: Colors.deepPurple[900],
      surface: Colors.black54,
      background: Colors.black,
      error: Colors.white,
      onPrimary: Colors.deepPurple[900],
      onSecondary: Colors.deepPurple[900],
      onSurface: txtColor,
      onBackground: txtColor,
      onError: Colors.white,
      brightness: Brightness.dark,
    );

    ThemeData theme = ThemeData.from(
      textTheme: txtTheme,
      colorScheme: colorScheme,
    ).copyWith(
        buttonColor: Colors.deepPurple[900],
        buttonTheme: ButtonThemeData(
          colorScheme: colorScheme,
          splashColor: Colors.indigo[900],
        ),
        cursorColor: Colors.deepPurple[900],
        highlightColor: Colors.deepPurple[900],
        toggleableActiveColor: Colors.deepPurple[900]);

    return theme;
  }
}
