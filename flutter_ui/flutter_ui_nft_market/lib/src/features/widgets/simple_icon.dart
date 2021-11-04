import 'package:flutter/material.dart';

class SimpleIcon extends StatelessWidget {
  SimpleIcon(this.icon, {Key? key}) : super(key: key);
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
