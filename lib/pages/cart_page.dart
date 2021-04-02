// import 'package:day_thirty_flutter/widget/themes.dart';
import 'package:day_thirty_flutter/models/cart_model.dart';
// import 'package:day_thirty_flutter/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.color(context.theme.backgroundColor).make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not Supported yet..!".text.make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    // ignore: null_aware_in_condition
    return _cart.items?.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    _cart.remove(_cart.items[index]);
                    // setState(() {});
                  }),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
