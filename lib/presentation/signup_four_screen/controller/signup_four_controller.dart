import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_four_screen/models/signup_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupFourScreen.
///
/// This class manages the state of the SignupFourScreen, including the
/// current signupFourModelObj
class SignupFourController extends GetxController {
  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController keyNineController = TextEditingController();

  Rx<SignupFourModel> signupFourModelObj = SignupFourModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameEditTextController.dispose();
    phoneNumberEditTextController.dispose();
    emailController.dispose();
    passwordEditTextController.dispose();
    keyNineController.dispose();
  }
}
