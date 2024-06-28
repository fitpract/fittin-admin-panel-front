import 'package:flutter/material.dart';
import 'theme_colors.dart';

const textTheme = TextTheme(
  headlineLarge: headline,
  headlineSmall: subhead,
  titleLarge: title,
  titleMedium: title,
  bodyLarge: body,
  bodyMedium: TextStyle(),
  bodySmall: TextStyle(),
  labelLarge: label,
  labelMedium: errorLabel,
  labelSmall: TextStyle(),
);

const headline = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w600,
  fontSize: 29,
  color: AppColors.black,
);

const subhead = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: AppColors.black,
);

const title = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: AppColors.black,
);

const button = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: AppColors.white,
);

const body = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 15,
  color: AppColors.black,
);

const label = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: AppColors.black,
);

const errorLabel = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: AppColors.black,
);
