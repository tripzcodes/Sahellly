import 'controller/signup_unactive_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/presentation/signup_unactive_page/signup_unactive_page.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_leading_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_subtitle.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';

class SignupUnactiveTabContainerScreen
    extends GetWidget<SignupUnactiveTabContainerController> {
  const SignupUnactiveTabContainerScreen({Key? key}) : super(key: key);

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
                          height: 851.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                SignupUnactivePage(),
                                SignupUnactivePage()
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
        height: 50.v,
        width: 350.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.whiteA700,
            labelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
            unselectedLabelStyle: TextStyle(
                fontSize: 18.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicatorPadding: EdgeInsets.all(6.5.h),
            indicator: BoxDecoration(
                color: appTheme.indigoA400,
                borderRadius: BorderRadius.circular(10.h)),
            tabs: [
              Tab(child: Text("lbl_worker".tr)),
              Tab(child: Text("lbl_worker".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
