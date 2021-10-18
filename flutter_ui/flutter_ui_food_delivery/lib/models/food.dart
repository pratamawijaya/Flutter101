

class Food {
  String name;
  String imgUrl;
  String waitingTime;
  String about;
  num rating;
  String calorie;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;

  Food(this.name, this.imgUrl, this.waitingTime, this.about, this.rating,
      this.calorie, this.price, this.quantity, this.ingredients);

  static List<Food> generateRecommendedFood() {
    return [
      Food(
        "Samyang",
        'images/dish1.png',
        '50 minutes',
        'Soba mie soup',
        4.8,
        "430 kcal",
        12,
        1,
        [
          {
            'Noodle': 'images/ingre1.png',
          },
          {
            'Shrimp': 'images/ingre2.png',
          },
          {
            'Egg': 'images/ingre3.png',
          },
          {
            'Vegetable': 'images/ingre4.png',
          },
        ],
      ),
      Food(
        "Soup",
        'images/dish2.png',
        '30 minutes',
        'Soba mie soup',
        3.8,
        "430 kcal",
        12,
        1,
        [
          {
            'Noodle': 'images/ingre1.png',
          },
          {
            'Shrimp': 'images/ingre2.png',
          },
          {
            'Egg': 'images/ingre3.png',
          },
          {
            'Vegetable': 'images/ingre4.png',
          },
        ],
      ),
      Food(
        "Samyang",
        'images/dish3.png',
        '50 minutes',
        'Soba mie soup',
        4.8,
        "430 kcal",
        12,
        1,
        [
          {
            'Noodle': 'images/ingre1.png',
          },
          {
            'Shrimp': 'images/ingre2.png',
          },
          {
            'Egg': 'images/ingre3.png',
          },
          {
            'Vegetable': 'images/ingre4.png',
          },
        ],
      ),
    ];
  }
}
