import 'package:flutter/material.dart';

class ProductGalleryWidget extends StatelessWidget {
  final List<String> gallery;

  const ProductGalleryWidget({required this.gallery});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: gallery
          .map(
            (image) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
          )
          .toList(),
    );
  }
}
