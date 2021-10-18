import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/categories.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/discount_banner.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/home_header.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/special_offers.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers()
          ],
        ),
      ),
    );
  }
}
