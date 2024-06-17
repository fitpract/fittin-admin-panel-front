import 'package:flutter/material.dart';
import 'theme_colors.dart';

const textTheme = TextTheme(
  headlineLarge: headlineLarge,
  headlineMedium: headlineMedium,
  headlineSmall: headlineSmall,
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
  fontSize: 29,
  color: AppColors.black,
);

const headlineMedium = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: AppColors.black,
);

const headlineSmall = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: AppColors.black,
);

const bodyLarge = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 15,
  color: AppColors.black,
);

const bodySmall = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w200,
  fontSize: 12,
  color: AppColors.nonActiveField,
);
