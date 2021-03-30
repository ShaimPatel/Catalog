import 'package:day_thirty_flutter/models/catalog.dart';

class CartModel {
  // Catalog Feilds
  CatalogModel _catalog;

// Collection of IDS
  final List<int> _itemIds = [];

  // Get catalog
  CatalogModel get catalog => _catalog;

  // Set Catalog
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Itms in cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total Price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
