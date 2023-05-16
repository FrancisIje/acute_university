import "package:acute_university/Global/theme.dart";
import "package:acute_university/Login/view/login_screen.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(414, 896),
      builder: (BuildContext context, child) => MaterialApp(
        theme: appTheme,
        home: const LoginScreen(),
      ),
    );
  }
}
