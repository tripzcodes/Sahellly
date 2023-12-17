import 'controller/signup_five_controller.dart';
import 'models/signup_five_model.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupFivePage extends StatelessWidget {
  SignupFivePage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignupFiveController controller =
      Get.put(SignupFiveController(SignupFiveModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 48.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildRegistrationForm(),
                        SizedBox(height: 51.v),
                        CustomElevatedButton(
                            height: 52.v,
                            text: "lbl_next".tr,
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onPressed: () {
                              onTapNext();
                            }),
                        SizedBox(height: 36.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_already_have_account2".tr,
                                  style: theme.textTheme.bodySmall),
                              TextSpan(
                                  text: "lbl_login".tr,
                                  style: CustomTextStyles.labelLargeRedA400)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 22.v),
                        Text("lbl_or".tr, style: theme.textTheme.bodySmall),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(width: 108.h, child: Divider())),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(width: 108.h, child: Divider())),
                        SizedBox(height: 34.v),
                        CustomElevatedButton(
                            width: 225.h,
                            text: "msg_connect_with_google".tr,
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 19.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgDevicongoogle,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL10),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            width: 225.h,
                            text: "msg_connect_with_facebook".tr,
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 12.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFacebook,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)))
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildRegistrationForm() {
    return Column(children: [
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_youssef_ashraf".tr,
          hintStyle: CustomTextStyles.labelLargeGray90001,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIconamoonProfileLight,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v)),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: controller.phoneController,
          hintText: "lbl_01012414414".tr,
          hintStyle: CustomTextStyles.labelLargeGray90001,
          textInputType: TextInputType.phone,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 12.v, 22.h, 10.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMiCall,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v),
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          }),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_youssefashraf_example_com".tr,
          hintStyle: CustomTextStyles.labelLargeGray90001,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMdiemailoutline,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 46.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          }),
      SizedBox(height: 47.v),
      CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl2".tr,
          hintStyle: CustomTextStyles.labelLargeGray90001,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true)
    ]);
  }

  /// Navigates to the loginActiveOneScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.loginActiveOneScreen,
    );
  }
}
