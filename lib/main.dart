import 'package:day_thirty_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:day_thirty_flutter/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
