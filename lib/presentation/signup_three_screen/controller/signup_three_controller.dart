import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_three_screen/models/signup_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupThreeScreen.
///
/// This class manages the state of the SignupThreeScreen, including the
/// current signupThreeModelObj
class SignupThreeController extends GetxController {
  TextEditingController userNameEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController keyNineEditTextController = TextEditingController();

  TextEditingController keyThirteenEditTextController = TextEditingController();

  Rx<SignupThreeModel> signupThreeModelObj = SignupThreeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameEditTextController.dispose();
    phoneNumberEditTextController.dispose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
    keyNineEditTextController.dispose();
    keyThirteenEditTextController.dispose();
  }
}
