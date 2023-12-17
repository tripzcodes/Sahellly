import 'controller/signup_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupFourScreen extends GetWidget<SignupFourController> {
  SignupFourScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 9.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 14.h, right: 11.h, bottom: 5.v),
                        child: Column(children: [
                          _buildCustomer(),
                          SizedBox(height: 35.v),
                          _buildUserNameEditText(),
                          SizedBox(height: 47.v),
                          _buildPhoneNumberEditText(),
                          SizedBox(height: 47.v),
                          _buildEmail(),
                          SizedBox(height: 47.v),
                          _buildPasswordEditText(),
                          SizedBox(height: 47.v),
                          _buildKeyNine(),
                          SizedBox(height: 58.v),
                          _buildNextButton(),
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
                              child: SizedBox(
                                  width: 110.h, child: Divider(indent: 2.h))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  width: 113.h,
                                  child: Divider(endIndent: 5.h))),
                          SizedBox(height: 41.v),
                          _buildConnectWithGoogleButton(),
                          SizedBox(height: 19.v),
                          _buildConnectWithFacebookButton()
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
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sign_up".tr));
  }

  /// Section Widget
  Widget _buildCustomerButton() {
    return CustomElevatedButton(
        width: 173.h,
        text: "lbl_customer".tr,
        buttonStyle: CustomButtonStyles.fillOnError,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildWorkerButton() {
    return CustomElevatedButton(
        width: 169.h,
        text: "lbl_worker".tr,
        margin: EdgeInsets.only(top: 8.v),
        buttonStyle: CustomButtonStyles.fillIndigoA,
        buttonTextStyle: CustomTextStyles.titleMedium18);
  }

  /// Section Widget
  Widget _buildCustomer() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 45.v,
          width: 173.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
                alignment: Alignment.topCenter,
                child: Text("lbl_worker".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium)),
            _buildCustomerButton()
          ])),
      _buildWorkerButton()
    ]);
  }

  /// Section Widget
  Widget _buildUserNameEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.userNameEditTextController,
            hintText: "lbl_username".tr,
            hintStyle: theme.textTheme.labelLarge!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIconamoonProfileLight,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 46.v),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.phoneNumberEditTextController,
            hintText: "msg_enter_phone_number".tr,
            hintStyle: theme.textTheme.labelLarge!,
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
            }));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "lbl_enter_email_id".tr,
            hintStyle: theme.textTheme.labelLarge!,
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
            }));
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.passwordEditTextController,
            hintText: "lbl_enter_password".tr,
            hintStyle: theme.textTheme.labelLarge!,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true));
  }

  /// Section Widget
  Widget _buildKeyNine() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.keyNineController,
            hintText: "lbl_electrical".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 11.v, 26.h, 11.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLightbulbPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 46.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
            contentPadding: EdgeInsets.symmetric(vertical: 10.v))));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        height: 52.v,
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 2.h, right: 5.h),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildConnectWithGoogleButton() {
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
  Widget _buildConnectWithFacebookButton() {
    return CustomElevatedButton(
        width: 225.h,
        text: "msg_connect_with_facebook".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebook,
                height: 24.adaptSize,
                width: 24.adaptSize)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
