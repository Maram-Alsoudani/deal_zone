import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

//  text styles
class AppTextStyles {
  static TextStyle topHeading = TextStyle(
    fontSize: 26.sp,
    fontFamily: 'MavenPro',
    fontWeight: FontWeight.normal,
    color: AppColors.darkGray,
  );
  static TextStyle heading = TextStyle(
    fontSize: 24.sp,
    fontFamily: 'MavenPro',
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle subheading = TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontFamily: 'MavenPro'
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static TextStyle lightBodyText = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.medGray,
    fontFamily: 'Inter',
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}



