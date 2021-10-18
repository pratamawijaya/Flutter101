import 'package:flutter_ui_food_delivery/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menus;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menus);

  static Restaurant generateRestaurant() {
    return Restaurant(
      'Restaurant',
      '20-30 min',
      '3.9km',
      'Restaurant',
      'images/res_logo.png',
      'lorem ipsum',
      4.9,
      {
        'Recommend': Food.generateRecommendedFood(),
        'Popular': Food.generateRecommendedFood(),
        'Noodles': Food.generateRecommendedFood(),
      },
    );
  }
}
