import 'package:flutter/material.dart';

ButtonStyle rectangleButtonStyle(Color color){
  return ButtonStyle(
    shape: WidgetStateProperty.resolveWith<RoundedRectangleBorder>((states) {
      return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      );
    }),
    side: WidgetStateProperty.resolveWith<BorderSide>((states) {
      return BorderSide(color: color, width: 2);
    }),
  );
}