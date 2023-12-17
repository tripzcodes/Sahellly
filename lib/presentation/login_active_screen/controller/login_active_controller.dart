import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/login_active_screen/models/login_active_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginActiveScreen.
///
/// This class manages the state of the LoginActiveScreen, including the
/// current loginActiveModelObj
class LoginActiveController extends GetxController {
  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  Rx<LoginActiveModel> loginActiveModelObj = LoginActiveModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailEditTextController.dispose();
    passwordEditTextController.dispose();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.iphone13MiniFiveContainerScreen,
      );
    });
  }
}
