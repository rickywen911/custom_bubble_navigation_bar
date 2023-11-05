import 'package:custom_navigation_bar/src/style/default_style.dart';
import 'package:flutter/material.dart';

class CustomNavigationBarThemeData {
  final Color? backgroundColor;
  final Color? strokeColor;
  final Color? selectedColor;
  final Color? unSelectedColor;

  const CustomNavigationBarThemeData({
    this.backgroundColor,
    this.strokeColor,
    this.selectedColor,
    this.unSelectedColor,
  });

  static final CustomNavigationBarThemeData _dark = CustomNavigationBarThemeData(
    backgroundColor: const Color.fromARGB(0xFF, 0x1E, 0x1E, 0x1E),
    strokeColor: Colors.white,
    selectedColor: Colors.white,
    unSelectedColor: DefaultCustomNavigationBarStyle.defaultUnselectedColor,
  );

  static final CustomNavigationBarThemeData _light = CustomNavigationBarThemeData(
    backgroundColor: Colors.white,
    strokeColor: Colors.blueAccent,
    selectedColor: DefaultCustomNavigationBarStyle.defaultColor,
    unSelectedColor: DefaultCustomNavigationBarStyle.defaultUnselectedColor,
  );

  static CustomNavigationBarThemeData get dark => _dark;

  static CustomNavigationBarThemeData get light => _light;

  CustomNavigationBarThemeData merge(
      {CustomNavigationBarThemeData? themeData,}) {
    if (themeData == null) {
      return this;
    } else {
      return CustomNavigationBarThemeData(
        backgroundColor: themeData.backgroundColor ?? backgroundColor,
        strokeColor: themeData.strokeColor ?? strokeColor,
        selectedColor: themeData.selectedColor ?? selectedColor,
        unSelectedColor: themeData.unSelectedColor ?? unSelectedColor,
      );
    }
  }
}
