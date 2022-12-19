class Product {
  final String name;
  final String category;
  final int quantity;

  Product(this.name, this.category, this.quantity);

  static List<Product> products = [
    Product('Milk', 'Food', 1),
    Product('Rice', 'Food', 5),
    Product('Past', 'Food', 4),
    Product('Nilon', 'Clothes', 4),
    Product('Baju', 'Clothes', 3),
    Product('Kemeja', 'Clothes', 1),
    Product('Celana', 'Clothes', 4),
  ];
}
