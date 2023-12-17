import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_eight_tab_container_screen/models/signup_eight_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupEightTabContainerScreen.
///
/// This class manages the state of the SignupEightTabContainerScreen, including the
/// current signupEightTabContainerModelObj
class SignupEightTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SignupEightTabContainerModel> signupEightTabContainerModelObj =
      SignupEightTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
