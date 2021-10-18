import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/screens/cart/cart_screen.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/iconbtn_with_counter.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/search_field.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconButtonWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}
