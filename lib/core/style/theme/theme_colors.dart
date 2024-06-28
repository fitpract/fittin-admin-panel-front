import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color orangeButton = Color(0xFFFF8200);
  static const Color orangeActiveButton = Color(0xFFF27222);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteBackGround = Color(0xFFF3F3F3);
  static const Color black = Color(0xFF000000);
  static const Color activeField = Color(0xFF404040);
  static const Color nonActiveField = Color(0xFF8B8B8B);
  static const Color editButtonColor = Color(0xFF34C38F);
  static const Color deleteButtonColor = Color(0xFFF46A6A);
  static const Color system = Color(0xFFF50000);
}


const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.orangeButton,
  onPrimary: AppColors.white,
  secondary: AppColors.orangeActiveButton,
  onSecondary: AppColors.white,
  error: Colors.red,
  onError: AppColors.white,
  background: AppColors.whiteBackGround,
  onBackground: AppColors.black,
  surface: AppColors.white,
  onSurface: AppColors.black,
  outline: AppColors.activeField,
  outlineVariant: AppColors.nonActiveField,
);