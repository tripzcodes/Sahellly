import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_two_page/models/signup_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupTwoPage.
///
/// This class manages the state of the SignupTwoPage, including the
/// current signupTwoModelObj
class SignupTwoController extends GetxController {
  SignupTwoController(this.signupTwoModelObj);

  TextEditingController userProfileController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController workfieldvalueController = TextEditingController();

  Rx<SignupTwoModel> signupTwoModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userProfileController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    workfieldvalueController.dispose();
  }
}
