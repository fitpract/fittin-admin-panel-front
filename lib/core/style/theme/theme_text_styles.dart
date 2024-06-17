import 'package:flutter/material.dart';
import 'theme_colors.dart';

const textTheme = TextTheme(
  headlineLarge: headlineLarge,
  headlineMedium: headlineMedium,
  headlineSmall: TextStyle(),
  titleLarge: TextStyle(),
  titleMedium: TextStyle(),
  titleSmall: TextStyle(),
  bodyLarge: bodyLarge,
  bodyMedium: TextStyle(),
  bodySmall: TextStyle(),
);

const headlineLarge = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w600,
  fontSize: 19,
  color: AppColors.black,
);

const headlineMedium = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: AppColors.black,
);

const bodyLarge = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: AppColors.black,
);

const bodySmall = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w200,
  fontSize: 12,
  color: AppColors.nonActiveField,
);
