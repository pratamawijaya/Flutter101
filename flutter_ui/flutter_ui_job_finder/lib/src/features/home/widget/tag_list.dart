import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tags = <String>["All", "Popular", "Featured"];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        itemCount: tags.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, idx) => SizedBox(
          width: 15,
        ),
        itemBuilder: (ctx, idx) => GestureDetector(
          onTap: () {
            setState(() {
              selected = idx;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: selected == idx
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.2)),
                color: selected == idx
                    ? Theme.of(context).primaryColor.withOpacity(0.3)
                    : Colors.white),
            child: Text(tags[idx]),
          ),
        ),
      ),
    );
  }
}
