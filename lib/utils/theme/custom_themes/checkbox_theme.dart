import 'package:flutter/material.dart';

////// Custom Class for a Light & Dark Text Theme
class TCheckBoxTheme{
  TCheckBoxTheme._();

/////// Customizable Light Text Theme
static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)){
      return Colors.white;
    } else {
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)){
      return Colors.blue;
    } else {
      return Colors.transparent;
    } 
  }),
);
//////Customizable Dark Text Theme

static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)){
      return Colors.white;
    } else {
      return Colors.black;
    }
  }),
  fillColor: WidgetStateProperty.resolveWith((states){
    if (states.contains(WidgetState.selected)){
      return Colors.blue;
    } else {
      return Colors.transparent;
    } 
  }),
);

}

