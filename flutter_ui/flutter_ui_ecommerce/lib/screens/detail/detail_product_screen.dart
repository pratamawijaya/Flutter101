import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/domain/product.dart';
import 'package:flutter_ui_ecommerce/screens/detail/detail_body.dart';
import 'package:flutter_ui_ecommerce/widgets/custom_appbar.dart';

class DetailProductScreen extends StatelessWidget {
  static String routeName = "/detail-product";

  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DetailProductArgument args =
        ModalRoute.of(context)!.settings.arguments as DetailProductArgument;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: DetailBody(product: args.product),
    );
  }
}

class DetailProductArgument {
  final Product product;

  DetailProductArgument({required this.product});
}
