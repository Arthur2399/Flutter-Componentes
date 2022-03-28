import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color Primario
      primaryColor: primary,
      //App Bar Theme
      appBarTheme:
          const AppBarTheme(color: primary, elevation: 0, centerTitle: true),

      //TextBotton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),

      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0,
      ),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),

      //Inputs
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          )));

// DARK MODE
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Color Primario
    primaryColor: primary,

    //App Bar Theme
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    //TextBotton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    //Scaffold color
    scaffoldBackgroundColor: Colors.black,
  );
}
