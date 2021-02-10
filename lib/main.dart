import 'package:day_thirty_flutter/pages/login_page.dart';
import 'package:day_thirty_flutter/pages/themes.dart';
import 'package:day_thirty_flutter/utils/routes.dart';
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
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
      },
    );
  }
}
