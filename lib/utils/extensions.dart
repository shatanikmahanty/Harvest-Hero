import 'package:flutter/material.dart';

extension ResponsiveSize on MediaQueryData {
  static Size of(context) {
    Size size = Size(MediaQuery.of(context).size.width - 20, MediaQuery.of(context).size.height - 20);
    if (size.width >= 800) {
      size = Size(size.width / 2, size.height / 2);
    }
    return size;
  }
}
