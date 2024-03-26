import 'package:flutter/material.dart';
import 'package:gdsc/theme/theme_data.dart';

class ThemeProvider extends ChangeNotifier{
ThemeData _themeData= lightmode;
ThemeData get  themeData => _themeData;

set themeData(ThemeData themeData){
  _themeData=themeData;
  notifyListeners();
}

void Dark(){

  if (_themeData== lightmode){
    themeData= darktmode;

  }
}

void Light(){
  if (_themeData== darktmode){
    themeData= lightmode;

  }
}


}