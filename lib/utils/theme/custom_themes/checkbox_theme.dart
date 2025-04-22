import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  // Light Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color>((states) {
      return states.contains(WidgetState.selected) ? Colors.white : Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      return states.contains(WidgetState.selected) ? Colors.blue : Colors.grey.shade300;
    }),
  );

  // Dark Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color>((states) {
      return states.contains(WidgetState.selected) ? Colors.black : Colors.white;
    }),
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      return states.contains(WidgetState.selected) ? Colors.lightBlueAccent : Colors.grey.shade800;
    }),
  );
}
