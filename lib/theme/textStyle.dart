import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle default20w700 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    wordSpacing: 27,
  );
  static const TextStyle default16w700 =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 16);
  static const TextStyle default18w700 =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 18);
  static const TextStyle default13_5w500 = TextStyle(
      color: Colors.white, fontSize: 13.5, fontWeight: FontWeight.w500);
}
