import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.blue[50],
        canvasColor: creamColor,
        buttonColor: darkBluishColor,
        accentColor: darkBluishColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      backgroundColor: context.theme.buttonColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      brightness: Brightness.dark,
      canvasColor: darkcreamColor,
      buttonColor: lightBluishColor,
      accentColor: Vx.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));

  //Colors..
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
