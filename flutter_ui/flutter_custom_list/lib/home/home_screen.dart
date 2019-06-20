import 'package:flutter/material.dart';
import 'package:flutter_custom_list/home/book_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    "Typography",
    "Myth",
    "Photography",
    "Science",
    "Android",
    "Kotlin"
  ];
  List<String> tmp = ["tmp data", "tmp data 2"];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 68.0),
        child: Column(
          children: <Widget>[
            // ini appbar
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 16.0),
                  child: Text(
                    "Browse",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Reccomended"),
              ],
            ),
            // list category
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin:
                  const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          _selectedIndex = index;
                          setState(() {});
                        },
                        child: Chip(
                          backgroundColor: index == _selectedIndex
                              ? Colors.blue
                              : Colors.grey,
                          label: Text(
                            categories.elementAt(index),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // list buku
            Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      child: BookWidget(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
