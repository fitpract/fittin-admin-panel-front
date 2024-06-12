import 'package:flutter/material.dart';
import 'theme_colors.dart';
import 'theme_text_styles.dart';

ThemeData createLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.orangeButton,
    scaffoldBackgroundColor: AppColors.whiteBackGround,
    textTheme: const TextTheme(
      displayLarge: headline1,
      displayMedium: headline2,
      bodyLarge: bodyText1,
    ),
  );
}
