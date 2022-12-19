import 'package:flutter/material.dart';
import 'package:flutter_22_go_router/models/product.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen(
      {Key? key,
      required this.category,
      required this.asc,
      required this.quantity})
      : super(key: key);

  final String category;
  final bool asc;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.products
        .where((product) => product.category == category)
        .toList();

    products.sort((a, b) => a.name.compareTo(b.name));

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: const Color(0xFF0001AF),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (final Product product in products)
            ListTile(
              title: Text(product.name),
            )
        ],
      ),
    );
  }
}
