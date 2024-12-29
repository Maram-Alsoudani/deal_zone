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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                AppImages.logo,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 20.0.sp), // Adjust padding
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
