class Product {
  final String title;
  final String image;
  final String type;
  final int stock;
  final double price;
  final double rating;

  Product({
    required this.title,
    required this.image,
    required this.type,
    required this.stock,
    required this.price,
    required this.rating,
  });

  String get stockStatus {
    return stock > 0 ? 'Ready Stock' : 'Sold Out';
  }
}
