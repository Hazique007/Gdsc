import 'package:flutter/material.dart';
import 'package:gdsc/utils/colors.dart';

ThemeData lightmode = ThemeData(
brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background:Color(0xfffF8F8FF),
      secondary: MyColors.Font
    ),
    primaryColor: MyColors.Primary,

    appBarTheme: AppBarTheme(
    color: MyColors.Background,
      elevation: 0.0
)

);

ThemeData darktmode = ThemeData(

brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
    background: MyColors.Font,
      secondary: MyColors.Background
),
    appBarTheme: AppBarTheme(
      color: MyColors.Font,
      iconTheme: IconThemeData(color: MyColors.Background),
      elevation: 0.0,
    ),
    primaryColor: MyColors.Background,
);
