import 'package:flutter/material.dart';
import 'package:flutter_ui_online_shop/widgets/bottom_nav_widget.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: const Center(
        child: Text(
          "Home Screen",
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavWidget(
                onTap: () {},
                icon: Ionicons.home,
              ),
              BottomNavWidget(
                onTap: () {},
                icon: Ionicons.mail,
              ),
              BottomNavWidget(
                onTap: () {},
                icon: Ionicons.cart,
              ),
              BottomNavWidget(
                onTap: () {},
                icon: Ionicons.person,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
