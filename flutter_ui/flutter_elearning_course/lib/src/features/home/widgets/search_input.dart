import 'package:flutter/material.dart';
import 'package:flutter_elearning_course/src/utils/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: kFontLight, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            cursorColor: kFontLight,
            decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintStyle: TextStyle(color: kFontLight),
                hintText: "Search for Ecourse"),
          ),
        ),
        Positioned(
          top: 30,
          right: 10,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: kAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
