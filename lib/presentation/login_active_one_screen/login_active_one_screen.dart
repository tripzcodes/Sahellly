import 'controller/login_active_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';
import 'package:sahelly_prototype/widgets/custom_checkbox_button.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';
import 'package:sahelly_prototype/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginActiveOneScreen extends GetWidget<LoginActiveOneController> {
  LoginActiveOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 66.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15.h, right: 15.h, bottom: 5.v),
                        child: Column(children: [
                          _buildLoginValue(),
                          SizedBox(height: 17.v),
                          _buildPassword(),
                          SizedBox(height: 33.v),
                          _buildRememberMe(),
                          SizedBox(height: 99.v),
                          _buildLoginButton(),
                          SizedBox(height: 35.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("lbl_new_user".tr,
                                        style: theme.textTheme.bodySmall)),
                                Text("lbl_signup2".tr,
                                    style:
                                        CustomTextStyles.labelLargeIndigoA400)
                              ]),
                          SizedBox(height: 51.v),
                          _buildLineThree(),
                          SizedBox(height: 60.v),
                          _buildConnectWithGoogle(),
                          SizedBox(height: 19.v),
                          _buildConnectWithFacebook()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_login".tr, margin: EdgeInsets.only(left: 100.h)));
  }

  /// Section Widget
  Widget _buildLoginValue() {
    return CustomTextFormField(
        controller: controller.loginValueController,
        hintText: "msg_youssef_ashraf_example_com2".tr,
        contentPadding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_123132312314".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 11.v, 18.h, 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgSolareyebold,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 46.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 18.h, top: 14.v, bottom: 14.v)));
  }

  /// Section Widget
  Widget _buildRememberMe() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Obx(() => CustomCheckboxButton(
                          text: "lbl_remember_me".tr,
                          value: controller.rememberMe.value,
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          onChange: (value) {
                            controller.rememberMe.value = value;
                          }))),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v),
                      child: Text("msg_forget_password".tr,
                          style: CustomTextStyles.labelLargePrimary))
                ])));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        height: 52.v,
        text: "lbl_login".tr,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapLoginButton();
        });
  }

  /// Section Widget
  Widget _buildLineThree() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
              child: SizedBox(width: 108.h, child: Divider())),
          Text("lbl_or".tr, style: theme.textTheme.bodySmall),
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
              child: SizedBox(width: 108.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildConnectWithGoogle() {
    return CustomElevatedButton(
        width: 225.h,
        text: "msg_connect_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 19.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgDevicongoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL10);
  }

  /// Section Widget
  Widget _buildConnectWithFacebook() {
    return CustomElevatedButton(
        width: 225.h,
        text: "msg_connect_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapConnectWithFacebook();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the iphone13MiniFiveContainerScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.iphone13MiniFiveContainerScreen,
    );
  }

  onTapConnectWithFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
