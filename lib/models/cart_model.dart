import 'package:day_thirty_flutter/core/store.dart';
import 'package:day_thirty_flutter/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;
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

  // //Add Item
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // // Remove Items
  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store.cart._itemIds.remove(item.id);
  }
}
