import 'controller/signup_two_controller.dart';
import 'models/signup_two_model.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/core/utils/validation_functions.dart';
import 'package:sahelly_prototype/widgets/custom_elevated_button.dart';
import 'package:sahelly_prototype/widgets/custom_text_form_field.dart';

class SignupTwoPage extends StatelessWidget {
  SignupTwoPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignupTwoController controller =
      Get.put(SignupTwoController(SignupTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildUserProfile(),
                      SizedBox(height: 47.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 47.v),
                      _buildEmail(),
                      SizedBox(height: 47.v),
                      _buildPassword(),
                      SizedBox(height: 47.v),
                      _buildWorkfieldvalue(),
                      SizedBox(height: 58.v),
                      _buildNextButton(),
                      SizedBox(height: 36.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_already_have_account2".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "lbl_login".tr,
                              style: CustomTextStyles.labelLargeRedA400,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 22.v),
                      Text(
                        "lbl_or".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 108.h,
                          child: Divider(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 108.h,
                          child: Divider(),
                        ),
                      ),
                      SizedBox(height: 41.v),
                      _buildConnectWithGoogleButton(),
                      SizedBox(height: 19.v),
                      _buildConnectWithFacebookButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return CustomTextFormField(
      controller: controller.userProfileController,
      hintText: "lbl_username".tr,
      hintStyle: theme.textTheme.labelLarge!,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconamoonProfileLight,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "msg_enter_phone_number".tr,
      hintStyle: theme.textTheme.labelLarge!,
      textInputType: TextInputType.phone,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(26.h, 12.v, 22.h, 10.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgMiCall,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "lbl_enter_email_id".tr,
      hintStyle: theme.textTheme.labelLarge!,
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(26.h, 11.v, 20.h, 11.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgMdiemailoutline,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 46.v,
      ),
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_enter_password".tr,
      hintStyle: theme.textTheme.labelLarge!,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildWorkfieldvalue() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.workfieldvalueController,
        hintText: "lbl_work_field".tr,
        hintStyle: theme.textTheme.labelLarge!,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 11.v, 26.h, 11.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLightbulb,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 46.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.symmetric(vertical: 14.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
      height: 52.v,
      text: "lbl_next".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
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
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
    );
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
          width: 24.adaptSize,
        ),
      ),
    );
  }
}
