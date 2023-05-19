import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      fillColor: const Color(0xFFF2F2F2),
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w)),
  textTheme: Typography.englishLike2018.apply(
    fontSizeFactor: 1.sp,
    fontFamily: "Sansation",
    bodyColor: const Color(0xFF000F2C),
    displayColor: const Color(0xFF004ADD),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF004ADD),
  ),
);
