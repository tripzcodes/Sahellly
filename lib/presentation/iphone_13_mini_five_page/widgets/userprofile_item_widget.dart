import '../controller/iphone_13_mini_five_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sahelly_prototype/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<Iphone13MiniFiveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131.v,
      width: 180.h,
      margin: EdgeInsets.only(bottom: 4.v),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle449,
            height: 131.v,
            width: 180.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 87.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL6,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_order_successful2".tr,
                              style: CustomTextStyles.labelMediumPrimary,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.electricianName!.value,
                        style: CustomTextStyles.titleMedium_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        userprofileItemModelObj.appointmentDate!.value,
                        style: CustomTextStyles.labelLargeWhiteA700_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 44.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
