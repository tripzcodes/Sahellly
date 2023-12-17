import 'controller/signup_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupThreeScreen extends GetWidget<SignupThreeController> {
  SignupThreeScreen({Key? key}) : super(key: key);

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
                          _buildCustomerRow(),
                          SizedBox(height: 35.v),
                          _buildUserNameEditText(),
                          SizedBox(height: 47.v),
                          _buildPhoneNumberEditText(),
                          SizedBox(height: 47.v),
                          _buildEmailEditText(),
                          SizedBox(height: 47.v),
                          _buildPasswordEditText(),
                          SizedBox(height: 47.v),
                          _buildKeyNineEditText(),
                          SizedBox(height: 5.v),
                          _buildKeyThirteenStack(),
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
  Widget _buildCustomerRow() {
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
  Widget _buildEmailEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: CustomTextFormField(
            controller: controller.emailEditTextController,
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
  Widget _buildKeyNineEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.keyNineEditTextController,
            hintText: "lbl_work_field".tr,
            hintStyle: theme.textTheme.labelLarge!,
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
            contentPadding: EdgeInsets.symmetric(vertical: 11.v))));
  }

  /// Section Widget
  Widget _buildKeyThirteenEditText() {
    return CustomTextFormField(
        width: 225.h,
        controller: controller.keyThirteenEditTextController,
        hintText: "msg_connect_with_google".tr,
        textInputAction: TextInputAction.done,
        alignment: Alignment.bottomCenter,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(6.h, 7.v, 19.h, 7.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgDevicongoogle,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 38.v),
        contentPadding: EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
        fillColor: theme.colorScheme.onPrimaryContainer);
  }

  /// Section Widget
  Widget _buildKeyThirteenStack() {
    return SizedBox(
        height: 275.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 53.v, right: 2.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 150.h, vertical: 13.v),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text("lbl_next".tr,
                            style: theme.textTheme.titleMedium)),
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
                        textAlign: TextAlign.left)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 75.v),
                  child: Text("lbl_or".tr, style: theme.textTheme.bodySmall))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 79.v),
                  child: SizedBox(width: 108.h, child: Divider()))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 79.v),
                  child: SizedBox(width: 108.h, child: Divider()))),
          _buildKeyThirteenEditText(),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 87.h, vertical: 11.v),
                  decoration: AppDecoration.fillOnError
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("msg_select_your_field".tr,
                        style: CustomTextStyles.titleSmallBold),
                    SizedBox(height: 28.v),
                    Text("lbl_electronation".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 29.v),
                    Text("lbl_wood_worker".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 28.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtMaidWorker();
                        },
                        child: Text("lbl_maid_worker".tr,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 29.v),
                    Text("lbl_house_painter".tr,
                        style: theme.textTheme.bodyMedium),
                    SizedBox(height: 14.v)
                  ])))
        ]));
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

  /// Navigates to the signupEightTabContainerScreen when the action is triggered.
  onTapTxtMaidWorker() {
    Get.toNamed(
      AppRoutes.signupEightTabContainerScreen,
    );
  }
}
