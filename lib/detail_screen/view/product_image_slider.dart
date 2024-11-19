import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  final String image;
  final String bgImage;

  const ProductImageSlider({
    required this.image,
    required this.bgImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: SizedBox(
          width: size.width * 0.10,
          height: size.height * 0.2,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              // Background (Circular Effect)
              Positioned(
                bottom: 0,
                child: Image.asset(
                  bgImage,
                  width: size.width * 0.7,
                  height: size.height * 0.1,
                  fit: BoxFit.contain,
                ),
              ),
              // Foreground Shoe Image
              Positioned(
                right: -120,
                top: -30,
                child: Transform.rotate(
                  angle: -0.07,
                  child: Image.asset(
                    image,
                    width: size.width * 0.6,
                    height: size.height * 0.2,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
