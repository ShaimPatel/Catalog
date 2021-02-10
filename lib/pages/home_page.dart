import 'package:day_thirty_flutter/pages/drawer_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int day = 30;
    final String name = "Shivam Patel";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Welcome $day Day's of Flutter By  $name",
          // style: TextStyle(
          //   fontSize: 19.0,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
