import 'dart:ui';
enum AppFontWeight{bold,medium,regular}

extension Weight on AppFontWeight {
  FontWeight fontWeight() {
    switch (this) {
      case AppFontWeight.bold:
        return FontWeight.w700;
      case AppFontWeight.medium:
        return FontWeight.w500;
      case AppFontWeight.regular:
        return FontWeight.w200;
    }
  }
}
