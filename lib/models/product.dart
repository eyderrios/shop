class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool favorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.favorite = false,
  });

  void toggleFavorite() => favorite = !favorite;
}
