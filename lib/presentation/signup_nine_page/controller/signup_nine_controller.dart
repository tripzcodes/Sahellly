import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_nine_page/models/signup_nine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupNinePage.
///
/// This class manages the state of the SignupNinePage, including the
/// current signupNineModelObj
class SignupNineController extends GetxController {
  SignupNineController(this.signupNineModelObj);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController jobTitleFieldController = TextEditingController();

  Rx<SignupNineModel> signupNineModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
    jobTitleFieldController.dispose();
  }
}
