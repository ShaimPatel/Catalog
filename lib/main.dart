import 'package:day_thirty_flutter/pages/cart_page.dart';
import 'package:day_thirty_flutter/pages/login_page.dart';
import 'package:day_thirty_flutter/utils/routes.dart';
import 'package:day_thirty_flutter/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:day_thirty_flutter/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
        MyRoutes.cartRoutes: (context) => CartPage(),
      },
    );
  }
}
