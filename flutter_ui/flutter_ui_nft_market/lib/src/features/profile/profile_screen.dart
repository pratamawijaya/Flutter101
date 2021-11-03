import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(Icons.arrow_back_ios_outlined),
      actions: [
        _buildIcon(Icons.more_vert_outlined),
      ],
    );
  }

  IconButton _buildIcon(IconData icon) {
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
