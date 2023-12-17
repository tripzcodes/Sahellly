import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/login_active_one_screen/models/login_active_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginActiveOneScreen.
///
/// This class manages the state of the LoginActiveOneScreen, including the
/// current loginActiveOneModelObj
class LoginActiveOneController extends GetxController {
  TextEditingController loginValueController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginActiveOneModel> loginActiveOneModelObj = LoginActiveOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    loginValueController.dispose();
    passwordController.dispose();
  }
}
