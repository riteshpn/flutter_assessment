import 'package:flutter/material.dart';

enum FontStyleEnum {
  title,
  subtitle,
}

extension FontStyleExtension on FontStyleEnum {
  TextStyle get style {
    switch (this) {
      case FontStyleEnum.title:
        return const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
      case FontStyleEnum.subtitle:
        return const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white54,
        );
    }
  }
}
