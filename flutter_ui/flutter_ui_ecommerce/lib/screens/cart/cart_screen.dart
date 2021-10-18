import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/screens/cart/components/cart_body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            " items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
