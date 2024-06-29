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
  /// buttons
  primary: Color(0xFFFF8200),
  primaryContainer: Color(0xFFF27222),
  onPrimary: Color(0xFFFFFFFF),
  /// active buttons
  secondary: Color(0xFF34C38F),
  onSecondary: Color(0xFFFFFFFF),
  /// error messages
  error: Color(0xFFFE7171),
  onError: Color(0xFFFFFFFF),
  /// page bg
  background: Color(0xFFEDEDED),
  onBackground: Color(0xFF000000),
  /// nav panel items bg
  surface: Color(0xFFFBFBFB),
  /// app bar bg
  surfaceVariant: Color(0xFFFFFFFF),
  /// text, nav panel icons
  onSurface: Color(0xFF404040),
  /// search field bg, banner container bg
  surfaceContainer: Color(0xFFF3F3F9),
  /// search field border
  outline: Color(0xFFECECEC),
  /// input field border
  outlineVariant: Color(0xFF8B8B8B),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.light,
  /// buttons
  primary: Color(0xFF2E6DFF),
  onPrimary: Color(0xFFFFFFFF),
  /// active buttons
  secondary: Color(0xFF34C38F),
  onSecondary: Color(0xFFFFFFFF),
  /// error messages
  error: Color(0xFFFE7171),
  onError: Color(0xFFFFFFFF),
  /// page bg
  background: Color(0xFF212636),
  onBackground: Color(0xFFA6B0CF),
  /// nav panel items bg
  surface: Color(0xFF2A3042),
  /// app bar bg
  surfaceVariant: Color(0xFF262B3C),
  /// text, nav panel icons
  onSurface: Color(0xFFA6B0CF),
  /// search field bg, banner container bg
  surfaceContainer: Color(0xFF2A3042),
  /// search field border
  outline: Color(0xFF212636),
  /// input field border
  outlineVariant: Color(0xFFA6B0CF),
);

