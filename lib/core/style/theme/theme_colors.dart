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
  static const Color darkBackground = Color(0xFF212636);
  static const Color darkWebBarBackground = Color(0xFF262B3C);
  static const Color darkNavPanelBackground = Color(0xFF2A3042);
  static const Color darkButton = Color(0xFF2E6DFF);
  static const Color darkTextColor = Color(0xFFA6B0CF);
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

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.darkButton,
  onPrimary: AppColors.white,
  secondary: AppColors.darkTextColor,
  onSecondary: AppColors.white,
  error: Colors.red,
  onError: AppColors.white,
  background: AppColors.darkBackground,
  onBackground: AppColors.black,
  surface: AppColors.darkWebBarBackground,
  onSurface: AppColors.darkTextColor,
  outline: AppColors.activeField,
  outlineVariant: AppColors.nonActiveField,
);