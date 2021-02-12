import 'package:day_thirty_flutter/models/catalog.dart';
import 'package:day_thirty_flutter/pages/drawer_page.dart';
import 'package:day_thirty_flutter/pages/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Catalog App",
            style: TextStyle(),
          ),
        ),
      ),
      body: ListView.builder(
        // itemCount: CatalogModel.items.length,
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
            //item: CatalogModel.items[0],
          );
        },
      ),
      drawer: DrawerPage(),
    );
  }
}
