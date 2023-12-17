import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_one_page/models/signup_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupOnePage.
///
/// This class manages the state of the SignupOnePage, including the
/// current signupOneModelObj
class SignupOneController extends GetxController {
  SignupOneController(this.signupOneModelObj);

  TextEditingController userNameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupOneModel> signupOneModelObj;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
