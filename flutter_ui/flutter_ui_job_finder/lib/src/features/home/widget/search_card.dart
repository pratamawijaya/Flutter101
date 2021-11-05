import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        getProportionateScreenWidth(20),
      ),
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(20),
        horizontal: getProportionateScreenWidth(20),
      ),
      height: getProportionateScreenWidth(300),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/search_bg.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fast Search",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can search quickly job you want",
            style: Theme.of(context).textTheme.caption!.copyWith(
                  height: 1.8,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(
              getProportionateScreenWidth(15),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/search.png",
                  width: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
