import 'package:day_thirty_flutter/models/catalog.dart';
import 'package:day_thirty_flutter/pages/drawer_page.dart';
import 'package:day_thirty_flutter/pages/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    final productdata = decodedData("products");
    print(productdata);
  }

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
        //scrollDirection: Axis.horizontal,
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
