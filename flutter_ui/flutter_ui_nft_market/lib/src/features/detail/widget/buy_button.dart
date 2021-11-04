import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/utils/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: RawMaterialButton(
        elevation: 2,
        fillColor: kButtonColor,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "Bid Now",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
