import 'package:demo/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TOutlineBtn {
  static OutlinedButtonThemeData loutlinetheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(width: 1, color: Color.fromARGB(255, 34, 32, 32)),
      textStyle: TextStyle(color: Colors.black),
      padding: EdgeInsets.all(18),
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          bottomRight: Radius.circular(19),
        ),
      ),
    ),
  );
  static OutlinedButtonThemeData doutlinetheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(width: 1, color: Colors.white),
      foregroundColor: Colors.white, surfaceTintColor: Colors.white,
      padding: EdgeInsets.all(18),
      // textStyle: TextStyle(color: Colors.black),
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



// class TElevatedbtn {
//   static ElevatedButtonThemeData lelevattheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       shadowColor: lColorScheme.shadow,
//       backgroundColor: lColorScheme.scrim,
//       foregroundColor: lColorScheme.onError,
//       surfaceTintColor: lColorScheme.surfaceTint,
//       // backgroundColor: Color.fromARGB(239, 251, 251, 255),
//       elevation: 2.4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(90),
//       ),
//     ),
//   );

//   static ElevatedButtonThemeData delevattheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       foregroundColor: Colors.black,
//       backgroundColor: dColorScheme.surface,
//       surfaceTintColor: Color.fromARGB(255, 57, 53, 53),
//       elevation: 2.4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(90),
//       ),
//     ),
//   );
// }
