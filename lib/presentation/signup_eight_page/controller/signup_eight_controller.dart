import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_eight_page/models/signup_eight_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupEightPage.
///
/// This class manages the state of the SignupEightPage, including the
/// current signupEightModelObj
class SignupEightController extends GetxController {
  SignupEightController(this.signupEightModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController occupationController = TextEditingController();

  Rx<SignupEightModel> signupEightModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    occupationController.dispose();
  }
}
