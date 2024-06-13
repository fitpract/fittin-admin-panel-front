import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

ThemeData createLightTheme() {
  return ThemeData(
    /// displayLarge -> headlineLarge
    /// displayMedium -> headlineMedium
    textTheme: textTheme,
    colorScheme: lightColorScheme,
  );
}
