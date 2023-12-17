import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_one_page/models/signup_unactive_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupUnactiveOnePage.
///
/// This class manages the state of the SignupUnactiveOnePage, including the
/// current signupUnactiveOneModelObj
class SignupUnactiveOneController extends GetxController {
  SignupUnactiveOneController(this.signupUnactiveOneModelObj);

  TextEditingController userDetailsController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController maidworkerController = TextEditingController();

  Rx<SignupUnactiveOneModel> signupUnactiveOneModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userDetailsController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    maidworkerController.dispose();
  }
}
