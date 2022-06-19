class Product {
  final int id;
  final String title;
  final String name;
  final double price;
  final String imageUrl;
  bool favorite;

  Product({
    required this.id,
    required this.title,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.favorite = false,
  });

  void toggleFavorite() => favorite = !favorite;
}
