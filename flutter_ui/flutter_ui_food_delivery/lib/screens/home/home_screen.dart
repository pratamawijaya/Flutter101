import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(Icons.arrow_back, Icons.search_outlined),
        ],
      ),
    );
  }
}
