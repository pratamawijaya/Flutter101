import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';

class DetailBanner extends StatelessWidget {
  final Art art;
  const DetailBanner(this.art, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 30,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Icon(
              Icons.favorite_outline_outlined,
              color: Colors.pink,
            ),
          ),
        )
      ],
    );
  }
}
