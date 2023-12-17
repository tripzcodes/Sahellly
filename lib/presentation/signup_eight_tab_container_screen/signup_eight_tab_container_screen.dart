import 'controller/signup_eight_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_one_page/signup_one_page.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_two_page/signup_unactive_two_page.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';

class SignupEightTabContainerScreen
    extends GetWidget<SignupEightTabContainerController> {
  const SignupEightTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(children: [
                      _buildTabview(),
                      SizedBox(
                          height: 864.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                SignupOnePage(),
                                SignupOnePage(),
                                SignupUnactiveTwoPage()
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_sign_up".tr));
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
        height: 37.v,
        width: 348.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
            tabs: [
              Tab(child: Text("lbl_customer".tr)),
              Tab(child: Text("lbl_worker".tr)),
              Tab(child: Text("lbl_worker".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
