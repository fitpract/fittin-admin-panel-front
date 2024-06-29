import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

ThemeData lightTheme() {
  return ThemeData(
    /// displayLarge -> headlineLarge
    /// displayMedium -> headlineMedium
    textTheme: textTheme,
    colorScheme: lightColorScheme,
  );
}

ThemeData darkTheme() {
  return ThemeData(
    textTheme: textTheme,
    colorScheme: darkColorScheme,
  );
}