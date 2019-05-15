import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: List<ListItem>.generate(1000, 
  (i) => i % 6 == 0
    ? HeaderItem("Heading $i")
    : MessageItem("Sender $i", "Message Body $i")
  ),
));

class MyApp extends StatelessWidget {

  final List<ListItem> items;

  MyApp({Key key, @required this.items}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final title = "Mix List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
              final item = items[index];

              if(item is HeaderItem){
                return ListTile(
                  title: Text(
                    item.title,
                    style: Theme.of(context).textTheme.headline
                  ),
                );
              }else if(item is MessageItem){
                return ListTile(
                  title: Text(item.sender),
                  subtitle: Text(item.body),
                );
              }
          }
        ),
      ),
    );
  }
}

abstract class ListItem{}

class HeaderItem implements ListItem{
  final String title;

  HeaderItem(this.title);
}

class MessageItem implements ListItem{
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}