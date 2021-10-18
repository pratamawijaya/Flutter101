import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  RestaurantInfo({Key? key}) : super(key: key);

  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Restaurant Title',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
