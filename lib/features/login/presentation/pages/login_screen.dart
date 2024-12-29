import 'package:deal_zone/core/components/custom_text_form_field.dart';
import 'package:deal_zone/core/components/primary_button.dart';
import 'package:deal_zone/core/components/validators.dart';
import 'package:deal_zone/core/utils/app_styles.dart';
import 'package:deal_zone/core/utils/colors.dart';
import 'package:deal_zone/core/utils/images.dart';
import 'package:deal_zone/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 104.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage(AppImages.logo)),

              CustomTextFormField(
                hint: AppStrings.yourMobilePhone,
                validator: (val) => AppValidators.validatePhoneNumber(val),
                controller: phoneController,
                enabledBorderColor: AppColors.lightGray,
                borderRadius: BorderRadius.circular(7.sp),
                errorBorderColor: AppColors.red,
                focusedBorderColor: AppColors.lightGray,
              ),

              CustomTextFormField(
                isSecured: true,
                hint: AppStrings.password,
                validator: (val) => AppValidators.validatePhoneNumber(val),
                controller: passwordController,
              ),

              PrimaryButton(label: Text(AppStrings.login)),

              TextButton(
                  onPressed: () {}, child: Text(AppStrings.forgotPassword)),

              PrimaryButton(
                label: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0.sp, vertical: 1.sp),
                      child: Image(image: AssetImage(AppImages.faceBookVector)),
                    ),
                    Text(AppStrings.continueWithFacebook)
                  ],
                ),
                backgroundColor: WidgetStatePropertyAll(AppColors.blue),
              ),

              PrimaryButton(
                label: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 12.0.sp),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.5.r),
                            color: AppColors.white),
                        child: Image(
                            width: 26.w,
                            height: 26.h,
                            image: AssetImage(AppImages.googleVector))),
                    Text(AppStrings.continueWithGoogle),
                  ],
                ),
                backgroundColor: WidgetStatePropertyAll(AppColors.blue),
              ),

              Text(
                AppStrings.or,
                textAlign: TextAlign.center,
                style:
                    AppTextStyles.subheading.copyWith(color: AppColors.black),
              ),

              SizedBox(
                height: 20,
              ),

              TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.signUp,
                    style: AppTextStyles.subheading
                        .copyWith(color: AppColors.primaryColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
