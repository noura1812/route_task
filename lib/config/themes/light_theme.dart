import 'package:flutter/material.dart';
import 'package:route_task/core/utils/app_colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.bGColor,
      appBarTheme:
          AppBarTheme(elevation: 0, backgroundColor: AppColors.bGColor),
      shadowColor: Colors.transparent);
}
