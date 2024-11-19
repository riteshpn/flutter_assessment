class ProductDetail {
  final String name;
  final String image;
  final String bgimage;
  final String description;
  final double originalPrice;
  final double discountedPrice;
  final List<String> gallery;
  final List<int> sizes;

  ProductDetail( {
    required this.name,
    required this.image,
    required this.bgimage,
    required this.description,
    required this.originalPrice,
    required this.discountedPrice,
    required this.gallery,
    required this.sizes,
  });
}
