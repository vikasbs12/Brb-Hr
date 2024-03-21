import '../models/iphonesethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class IphonesethreeItemWidget extends StatelessWidget {
  IphonesethreeItemWidget(
    this.iphonesethreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IphonesethreeItemModel iphonesethreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 6.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 38.v,
                width: 36.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillPurple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder18,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconBriefcaseOutline,
                  height: 22.v,
                  width: 25.h,
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: Text(
                          "lbl_physics".tr,
                          style: CustomTextStyles
                              .labelMediumPoppinsSecondaryContainer_1,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "msg_click_here_to_download".tr,
                        style: CustomTextStyles
                            .labelMediumPoppinsSecondaryContainer,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 38.v,
              width: 36.h,
              margin: EdgeInsets.only(top: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder18,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconBriefcaseOutline,
                height: 22.v,
                width: 25.h,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  bottom: 7.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "lbl_mathematics".tr,
                        style: CustomTextStyles
                            .labelMediumPoppinsSecondaryContainer_1,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_click_here_to_download".tr,
                      style:
                          CustomTextStyles.labelMediumPoppinsSecondaryContainer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
