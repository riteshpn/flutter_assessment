import 'package:flutter_assessment/detail_screen/model/detail_product_model.dart';

class ProductDetailViewModel {
  // Sample data
  ProductDetail getProductDetails() {
    return ProductDetail(
      name: "Sample 1",
      image: "assets/splashlogo.png",
      bgimage: "assets/Imag.png",
      description:
          "Lorem ipsum dolor sit amet consectetur. Diam et augue est enim posuere fames. Placerat netus est at eget vivamus auctor id sit. Sodales aliquam malesuada sed pellentesque. Tortor eleifend faucibus lacus in lorem ipsum curabitur.",
      originalPrice: 967.80,
      discountedPrice: 849.69,
      gallery: [
        "assets/splashlogo.png",
        "assets/splashlogo.png",
        "assets/splashlogo.png",
      ],
      sizes: [38, 39, 40, 41, 42, 43],
    );
  }
}
