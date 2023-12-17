import '../iphone_13_mini_five_page/widgets/userprofile_item_widget.dart';
import 'controller/iphone_13_mini_five_controller.dart';
import 'models/iphone_13_mini_five_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_title.dart';
import 'package:sahelly_prototype/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sahelly_prototype/widgets/app_bar/custom_app_bar.dart';

class Iphone13MiniFivePage extends StatelessWidget {
  Iphone13MiniFivePage({Key? key})
      : super(
          key: key,
        );

  Iphone13MiniFiveController controller =
      Get.put(Iphone13MiniFiveController(Iphone13MiniFiveModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_welcome_back_youssef".tr,
                  style: CustomTextStyles.headlineSmallInterPrimary,
                ),
              ),
              SizedBox(height: 7.v),
              _buildWelcomeBackYoussef(),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_delivering_to".tr,
                      style: CustomTextStyles.headlineSmallInterOnPrimary,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgMdiLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        left: 9.h,
                        bottom: 5.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_the_5th_settlement".tr,
                  style: CustomTextStyles.titleMediumInterGray600,
                ),
              ),
              SizedBox(height: 27.v),
              _buildServices(),
              SizedBox(height: 31.v),
              _buildOrderHistory(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_sahely".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCarbonNotificationFilled,
          margin: EdgeInsets.fromLTRB(20.h, 8.v, 20.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackYoussef() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 85.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.fillOnError.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_your_current_balance".tr,
              style: CustomTextStyles.titleMediumInterPrimarySemiBold,
            ),
            SizedBox(height: 9.v),
            Text(
              "lbl_320_00_egp".tr,
              style: CustomTextStyles.titleMediumInterPrimary,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildServices() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_services".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.h),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSubwayPower,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "lbl_electrician".tr,
                          style: CustomTextStyles.labelLargeInterPrimary,
                        ),
                        SizedBox(height: 16.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIonHammerSharp,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 41.h,
                          child: Text(
                            "lbl_wood_worker".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiBroom,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 6.v),
                        SizedBox(
                          width: 41.h,
                          child: Text(
                            "lbl_maid_worker".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFa6SolidBrush,
                          height: 32.v,
                          width: 24.h,
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 40.h,
                          child: Text(
                            "lbl_house_painter".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelLargeInterPrimary,
                          ),
                        ),
                        SizedBox(height: 3.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderHistory() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text(
                "lbl_order_history".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 8.v),
            SizedBox(
              height: 135.v,
              child: Obx(
                () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 10.h,
                    );
                  },
                  itemCount: controller.iphone13MiniFiveModelObj.value
                      .userprofileItemList.value.length,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model = controller
                        .iphone13MiniFiveModelObj
                        .value
                        .userprofileItemList
                        .value[index];
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
