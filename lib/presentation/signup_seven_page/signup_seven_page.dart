import 'controller/signup_seven_controller.dart';
import 'models/signup_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupSevenPage extends StatelessWidget {
  SignupSevenPage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignupSevenController controller =
      Get.put(SignupSevenController(SignupSevenModel().obs));

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
                        _buildAhmedMohsenRow(
                            miCallImage: ImageConstant.imgIconamoonProfileLight,
                            labelText: "lbl_ahmed_mohsen".tr),
                        SizedBox(height: 47.v),
                        _buildAhmedMohsenRow(
                            miCallImage: ImageConstant.imgMiCall,
                            labelText: "lbl_01012414414".tr),
                        SizedBox(height: 47.v),
                        _buildEmailEditText(),
                        SizedBox(height: 47.v),
                        _buildPasswordEditText(),
                        SizedBox(height: 47.v),
                        _buildOccupationEditText(),
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
                            child: SizedBox(width: 108.h, child: Divider())),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(width: 108.h, child: Divider())),
                        SizedBox(height: 41.v),
                        _buildConnectWithGoogleButton(),
                        SizedBox(height: 19.v),
                        _buildConnectWithFacebookButton()
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
        controller: controller.emailEditTextController,
        hintText: "msg_ahmedmohsen_example_com".tr,
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
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return CustomTextFormField(
        controller: controller.passwordEditTextController,
        hintText: "lbl".tr,
        hintStyle: CustomTextStyles.labelLargeGray90001,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildOccupationEditText() {
    return Obx(() => CustomTextFormField(
        controller: controller.occupationEditTextController,
        hintText: "lbl_wood_worker".tr,
        hintStyle: CustomTextStyles.labelLargeGray90001_1,
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
                    imagePath: ImageConstant.imgLightbulb,
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
        contentPadding: EdgeInsets.symmetric(vertical: 14.v)));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        height: 52.v,
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapNextButton();
        });
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

  /// Common widget
  Widget _buildAhmedMohsenRow({
    required String miCallImage,
    required String labelText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 9.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: miCallImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 22.h, top: 5.v, bottom: 3.v),
              child: Text(labelText,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray90001
                      .copyWith(color: appTheme.gray90001)))
        ]));
  }

  /// Navigates to the iphone13MiniFiveContainerScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.iphone13MiniFiveContainerScreen,
    );
  }
}
