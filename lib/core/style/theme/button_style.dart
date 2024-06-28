import 'package:flutter/material.dart';

ButtonStyle rectangleButtonStyle(){
  return ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: Colors.red)
          )
      )
  );
}