import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/screens/home/components/popular_product.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(0),
      ),
      child: Column(
        children: [
          _buildSectionTitle("Special For You", "See More"),
          SizedBox(height: getProportionateScreenWidth(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  category: "Smartphone",
                  image: "assets/images/Image Banner 2.png",
                  numOfBrands: 18,
                  press: () {},
                ),
                SpecialOfferCard(
                  category: "Fashion",
                  image: "assets/images/Image Banner 3.png",
                  numOfBrands: 24,
                  press: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          _buildSectionTitle("Popular Product", "See More"),
          SizedBox(height: getProportionateScreenWidth(20)),
          PopularProducts(),
        ],
      ),
    );
  }

  Padding _buildSectionTitle(String leftString, String rightString) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftString,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          Text(
            rightString,
            style: TextStyle(
              color: Color(0xFFBBBBBB),
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  const SpecialOfferCard(
      {Key? key,
      required this.category,
      required this.image,
      required this.numOfBrands,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenHeight(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
