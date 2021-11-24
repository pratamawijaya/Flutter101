import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  EmojiWidget(String this.text, String this.emoji, {Key? key})
      : super(key: key);

  String? text;
  String? emoji;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: emoji,
            style: TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
