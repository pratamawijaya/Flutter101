import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/profile.dart';
import 'package:flutter_ui_nft_market/utils/size_config.dart';

class PersonInfo extends StatelessWidget {
  Profile profile;

  PersonInfo({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(profile.imgUrl ?? ""),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            profile.name ?? "",
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          Text(
            profile.twitter!,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            profile.desc!,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            profile.email!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
