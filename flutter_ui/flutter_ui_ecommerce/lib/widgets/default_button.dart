import 'package:flutter/material.dart';
import 'package:flutter_ui_ecommerce/theme/constants.dart';
import 'package:flutter_ui_ecommerce/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  final Function? press;
  final String? text;

  const DefaultButton({Key? key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
