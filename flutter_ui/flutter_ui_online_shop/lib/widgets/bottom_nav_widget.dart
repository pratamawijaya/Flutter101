import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key, required this.onTap, required this.icon,
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
