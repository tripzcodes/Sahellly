import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_two_page/models/signup_unactive_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupUnactiveTwoPage.
///
/// This class manages the state of the SignupUnactiveTwoPage, including the
/// current signupUnactiveTwoModelObj
class SignupUnactiveTwoController extends GetxController {
  SignupUnactiveTwoController(this.signupUnactiveTwoModelObj);

  TextEditingController userProfileController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController housePainterController = TextEditingController();

  Rx<SignupUnactiveTwoModel> signupUnactiveTwoModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userProfileController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    housePainterController.dispose();
  }
}
