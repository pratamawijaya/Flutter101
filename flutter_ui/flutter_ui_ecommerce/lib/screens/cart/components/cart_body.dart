import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/domain/cart.dart';
import 'package:flutter_ui_ecommerce/screens/cart/components/cart_card.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            background: Container(),
            child: CartCard(cart: demoCarts[index]),
          ),
        ),
      ),
    );
  }
}
