import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_six_page/models/signup_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupSixPage.
///
/// This class manages the state of the SignupSixPage, including the
/// current signupSixModelObj
class SignupSixController extends GetxController {
  SignupSixController(this.signupSixModelObj);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController signupButtonEditTextController =
      TextEditingController();

  Rx<SignupSixModel> signupSixModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
    signupButtonEditTextController.dispose();
  }
}
