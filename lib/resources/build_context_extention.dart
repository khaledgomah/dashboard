import 'package:flutter/material.dart';

extension  BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
}