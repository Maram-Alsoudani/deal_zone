import 'package:deal_zone/config/routes.dart';
import 'package:deal_zone/core/utils/colors.dart';
import 'package:deal_zone/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        context.go(AppRoutes.loginScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 400.sp, bottom: 30.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.logoWithName,
                  width: 185.w,
                  height: 61.h,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Spacer(),
            CircularProgressIndicator(
              color: AppColors.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
