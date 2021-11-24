import 'package:flutter/material.dart';
import 'package:flutter_elearning_course/src/features/home/widgets/search_input.dart';
import 'package:flutter_elearning_course/src/utils/constants.dart';
import 'package:flutter_elearning_course/src/widgets/emoji_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(context),
              SizedBox(
                height: 10,
              ),
              EmojiWidget("Lets boost your\nbrain power ", "✨"),
              SearchInput(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top of the week",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "view all",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: kFontLight),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello Mark !",
          style: Theme.of(context).textTheme.headline6!.copyWith(color: kFont),
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.notifications_none,
                color: kFontLight,
              ),
            ),
            Positioned(
              top: 15,
              right: 10,
              child: Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ),
            )
          ],
        )
      ],
    );
  }
}
