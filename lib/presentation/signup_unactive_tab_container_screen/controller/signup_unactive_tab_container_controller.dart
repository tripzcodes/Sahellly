import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_tab_container_screen/models/signup_unactive_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupUnactiveTabContainerScreen.
///
/// This class manages the state of the SignupUnactiveTabContainerScreen, including the
/// current signupUnactiveTabContainerModelObj
class SignupUnactiveTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SignupUnactiveTabContainerModel> signupUnactiveTabContainerModelObj =
      SignupUnactiveTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
