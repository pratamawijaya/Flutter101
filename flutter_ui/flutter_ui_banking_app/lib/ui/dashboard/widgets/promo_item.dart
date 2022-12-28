import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';
import 'package:flutter_ui_banking_app/utils/size_config.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(240),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kPrimaryDarkColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Promo",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
