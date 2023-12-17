import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_five_page/models/signup_five_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupFivePage.
///
/// This class manages the state of the SignupFivePage, including the
/// current signupFiveModelObj
class SignupFiveController extends GetxController {
  SignupFiveController(this.signupFiveModelObj);

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupFiveModel> signupFiveModelObj;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
