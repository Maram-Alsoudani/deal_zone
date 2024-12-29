import 'package:deal_zone/core/utils/app_styles.dart';
import 'package:deal_zone/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  Widget label;
  WidgetStateProperty<Color?>? backgroundColor;
  void Function()? onClicked;

  PrimaryButton({super.key, required this.label, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0.sp, vertical: 4.0.sp),
      child: ElevatedButton(
          style: ButtonStyle(

            padding:
                WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10.sp)),
            backgroundColor:
                backgroundColor ?? WidgetStatePropertyAll(AppColors.primaryColor),
            foregroundColor: WidgetStatePropertyAll(AppColors.white),
            textStyle: WidgetStatePropertyAll(AppTextStyles.subheading),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          ),
          onPressed: onClicked,
          child: label),
    );
  }
}
