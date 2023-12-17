import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_seven_page/models/signup_seven_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupSevenPage.
///
/// This class manages the state of the SignupSevenPage, including the
/// current signupSevenModelObj
class SignupSevenController extends GetxController {
  SignupSevenController(this.signupSevenModelObj);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController occupationEditTextController = TextEditingController();

  Rx<SignupSevenModel> signupSevenModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
    occupationEditTextController.dispose();
  }
}
