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
);

const subhead = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 20,
);

const title = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 18,
);

const button = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 18,
);

const body = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 15,
);

const label = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 14,
);

const errorLabel = TextStyle(
  fontFamily: 'Noto Sans',
  fontWeight: FontWeight.w400,
  fontSize: 14,
);
