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
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkGray,
  );

  static TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static TextStyle lightBodyText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}


// Button Styles
class ButtonStyles {
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: AppColors.primaryColor,
    textStyle: AppTextStyles.buttonText,
    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );

  static final ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: AppColors.primaryColor,
    textStyle: AppTextStyles.buttonText,
    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );
}
