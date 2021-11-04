import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/profile.dart';

class ArtInfo extends StatelessWidget {
  ArtInfo(this.art, {Key? key}) : super(key: key);

  final Art art;
  final Profile profile = Profile.generateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildIconText(
                  context, profile.imgUrl!, profile.name!, profile.twitter!),
              SizedBox(
                width: 80,
              ),
              _buildIconText(context, "assets/images/eth.png", "Current Bid",
                  "${art.price}")
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(
      BuildContext ctx, String imgUrl, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(ctx).textTheme.bodyText1,
            ),
            SizedBox(
              height: 5,
            ),
            Text(text, style: Theme.of(ctx).textTheme.bodyText2),
          ],
        )
      ],
    );
  }
}
