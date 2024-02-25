import 'package:demo/firebase_options.dart';
import 'package:demo/src/features/auth/screens/splash/splash.dart';
import 'package:demo/src/features/cart/controlers/blocs/cart_bloc.dart';
import 'package:demo/src/features/home/screen/home/Bottom.dart';
import 'package:demo/src/repository/auth_repo/authentication_repo.dart';
import 'package:demo/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import 'src/features/cart/controlers/blocs/cart_event.dart';

// Gradient lgradiant = RadialGradient(
//   radius: 3.0,
//   // focalRadius: 4.0,
//   colors: [
//     Color.fromARGB(255, 253, 253, 253),
//     Color.fromARGB(255, 6, 230, 246),
//     Color.fromARGB(255, 0, 0, 0)
//   ],

//   stops: [0.0, 0.4, 1.0],
// );
// Gradient dgradiant = RadialGradient(
//   radius: 3.0,
//   // focalRadius: 4.0,
//   colors: [
//     Color.fromARGB(134, 2, 120, 126),
//     Color.fromARGB(255, 191, 188, 188),
//     Color.fromARGB(157, 0, 0, 0),
//   ],

//   stops: [0.0, 0.7, 1.0],
// );
final ColorScheme lColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, brightness: Brightness.light);
final ColorScheme dColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.amber, brightness: Brightness.dark);
void main() {
  runApp(const FoodApp());
  // This widget is the root of your application.
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc()..add(CartStarted()),
      child: GetMaterialApp(
        title: "Row Chinese",
        debugShowCheckedModeBanner: false,
        theme: Apptheme.lighttheme,
        darkTheme: Apptheme.darktheme,
        themeMode: ThemeMode.system,
        transitionDuration: const Duration(milliseconds: 500),
        home:
            //  BottomScreen(),
            CircularProgressIndicator(),
      ),
    );
  }
}
