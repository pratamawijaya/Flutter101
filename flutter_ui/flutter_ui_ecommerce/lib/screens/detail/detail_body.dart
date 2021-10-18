import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/domain/product.dart';
import 'package:flutter_ui_ecommerce/screens/detail/components/product_description.dart';
import 'package:flutter_ui_ecommerce/screens/detail/components/product_images.dart';
import 'package:flutter_ui_ecommerce/theme/constants.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';
import 'package:flutter_ui_ecommerce/widgets/default_button.dart';
import 'package:flutter_ui_ecommerce/widgets/rounded_icon.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // product images
        ProductImages(product: product),
        TopRoundedCorner(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              ColorDots(product: product),
              TopRoundedCorner(
                color: Color(0xFFF6F7F9),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: DefaultButton(
                    text: "Add To Cart",
                    press: () {},
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TopRoundedCorner extends StatelessWidget {
  const TopRoundedCorner({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
