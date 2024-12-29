import 'dart:ui';
import 'package:flutter/material.dart';
import 'colors.dart';

//  text styles
class AppTextStyles {
  static TextStyle heading = TextStyle(
    fontSize: 24,
    fontFamily: 'MavenPro',
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle subheading = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontFamily: 'MavenPro'
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static TextStyle lightBodyText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.medGray,
    fontFamily: 'Inter',
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}



