import 'package:semi11/splash_screen.dart';
import 'package:semi11/theme/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'navigator');

class Semi11App extends StatelessWidget {
  const Semi11App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Finder',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: ThemeData(
        fontFamily: 'nunito',
        primaryColor: primary,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primary,
          onPrimary: whiteColor,
          secondary: secondary,
          onSecondary: whiteColor,
          error: error,
          onError: error,
          background: whiteColor,
          onBackground: whiteColor,
          surface: surface,
          onSurface: surface,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
