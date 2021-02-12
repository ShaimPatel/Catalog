class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12th Pro",
        desc: "Apple iPhone 12th genration ",
        price: 9999,
        color: "#33505a",
        image:
            "https://images.unsplash.com/photo-1550029402-226115b7c579?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
