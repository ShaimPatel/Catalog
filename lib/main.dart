import 'package:day_thirty_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:day_thirty_flutter/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
