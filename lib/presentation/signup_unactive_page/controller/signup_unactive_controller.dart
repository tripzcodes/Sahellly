import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_page/models/signup_unactive_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupUnactivePage.
///
/// This class manages the state of the SignupUnactivePage, including the
/// current signupUnactiveModelObj
class SignupUnactiveController extends GetxController {
  SignupUnactiveController(this.signupUnactiveModelObj);

  TextEditingController userDetailsController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController woodworkerController = TextEditingController();

  Rx<SignupUnactiveModel> signupUnactiveModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userDetailsController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    woodworkerController.dispose();
  }
}
