import 'package:demo/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TElevatedbtn {
  static ElevatedButtonThemeData lelevattheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(18),
      shadowColor: lColorScheme.shadow,
      backgroundColor: lColorScheme.scrim,
      foregroundColor: lColorScheme.onError,
      surfaceTintColor: lColorScheme.surfaceTint,
      // backgroundColor: Color.fromARGB(239, 251, 251, 255),
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          bottomRight: Radius.circular(19),
        ),
      ),
    ),
  );

  static ElevatedButtonThemeData delevattheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(18),
      // foregroundColor: Color.fromARGB(255, 225, 235, 234),
      backgroundColor: Color.fromARGB(255, 252, 139, 2),
      surfaceTintColor: lColorScheme.shadow,
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          bottomRight: Radius.circular(19),
        ),
      ),
    ),
  );
}
