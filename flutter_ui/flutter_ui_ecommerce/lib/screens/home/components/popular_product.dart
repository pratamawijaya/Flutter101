import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/domain/product.dart';
import 'package:flutter_ui_ecommerce/widgets/product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoProducts.length,
            (index) {
              if (demoProducts[index].isPopular) {
                return ProductCard(product: demoProducts[index]);
              } else {
                return const SizedBox.shrink();
              }
            },
          )
        ],
      ),
    );
  }
}
