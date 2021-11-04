import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid(this.scrollKey, this.list, {Key? key}) : super(key: key);
  final List<Art> list;
  final String scrollKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: list.length,
        key: PageStorageKey(scrollKey),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5,
        ),
        itemBuilder: (ctx, idx) => Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              list[idx].imgUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
