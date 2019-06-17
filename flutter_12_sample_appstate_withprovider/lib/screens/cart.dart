import 'package:flutter/material.dart';
import 'package:flutter_12_sample_appstate_withprovider/models/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme
            .of(context)
            .textTheme
            .display2,),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: _CartList(),
              ),
            ),
            Container(height: 4, color: Colors.black,),
            _CartTotal()
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme
        .title;
    var cart = Provider.of<CartModel>(context);

    return ListView(
      children: <Widget>[
        for (var item in cart.items) Text('· ${item.name}', style: textTheme),
      ],
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme
        .display4
        .copyWith(fontSize: 48);

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CartModel>(
                builder: (context, cart, child) =>
                    Text('\$${cart.totalPrice}', style: textTheme)),
            SizedBox(
              width: 24,
            ),
            FlatButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Buying not support'),))
              },
              color: Colors.white,
              child: Text('Buy'),
            )
          ],
        ),
      ),
    );
  }
}
