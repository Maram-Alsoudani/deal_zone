import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes.dart';
import '../../../../core/components/custom_text_form_field.dart';
import '../../../../core/components/primary_button.dart';
import '../../../../core/components/validators.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/images.dart';
import '../../../../core/utils/strings.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController reTypePassController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(image: AssetImage(AppImages.logo)),
              Text(
                AppStrings.yourNextBigDealIsHere,
                style: AppTextStyles.topHeading,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                hint: AppStrings.name,
                validator: (val) => AppValidators.validateUsername(val),
                controller: nameController,
                enabledBorderColor: AppColors.lightGray,
                borderRadius: BorderRadius.circular(7.sp),
                errorBorderColor: AppColors.red,
                focusedBorderColor: AppColors.lightGray,
              ),
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
              CustomTextFormField(
                isSecured: true,
                hint: AppStrings.reTypePassword,
                validator: (val) => AppValidators.validateConfirmPassword(
                    val, passwordController.text),
                controller: phoneController,
                enabledBorderColor: AppColors.lightGray,
                borderRadius: BorderRadius.circular(7.sp),
                errorBorderColor: AppColors.red,
                focusedBorderColor: AppColors.lightGray,
              ),
              PrimaryButton(label: Text(AppStrings.getStarted)),
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
                height: 10.h,
              ),
              TextButton(
                  onPressed: () {
                    context.go(AppRoutes.registerScreen);
                  },
                  child: Text(
                    AppStrings.signIn,
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
