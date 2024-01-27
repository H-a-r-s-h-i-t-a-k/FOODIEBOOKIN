import 'package:demo/main.dart';
import 'package:demo/src/constants/colors.dart';
import 'package:demo/src/utils/widgetheme/elevatedbtn.dart';
import 'package:demo/src/utils/widgetheme/outlinebtn.dart';
import 'package:demo/src/utils/widgetheme/texttheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  Apptheme._();
  static ThemeData darktheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    colorScheme: dColorScheme,
    cardTheme: CardTheme().copyWith(
      color: dColorScheme.primary.withOpacity(0.5),
      surfaceTintColor: dColorScheme.onPrimary.withOpacity(0.9),
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
    ),
    appBarTheme: AppBarTheme().copyWith(
      elevation: 5,
      backgroundColor: dColorScheme.primary.withOpacity(0.7),
      foregroundColor: dColorScheme.primaryContainer.withOpacity(0.9),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: mPrimaryColor,
    ),
    outlinedButtonTheme: TOutlineBtn.doutlinetheme,
    elevatedButtonTheme: TElevatedbtn.delevattheme,
    textTheme: ttextTheme.dtexttheme,
  );
  static ThemeData lighttheme = ThemeData().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
    colorScheme: lColorScheme,
    appBarTheme: AppBarTheme().copyWith(
      elevation: 5,
      backgroundColor: lColorScheme.primary.withOpacity(0.8),
      foregroundColor: lColorScheme.primaryContainer,
    ),
    cardTheme: CardTheme().copyWith(
      color: lColorScheme.surface,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.black,
    ),
    outlinedButtonTheme: TOutlineBtn.loutlinetheme,
    elevatedButtonTheme: TElevatedbtn.lelevattheme,
    textTheme: ttextTheme.ltexttheme,
  );
}
