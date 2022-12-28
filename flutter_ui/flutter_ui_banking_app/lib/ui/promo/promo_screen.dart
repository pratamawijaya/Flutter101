import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';

class PromoScreen extends StatelessWidget {
  const PromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promo Screen"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Promo Screen"),
          ],
        ),
      ),
    );
  }
}
