import '../models/iphonesetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/app_export.dart';

// ignore: must_be_immutable
class IphonesetwoItemWidget extends StatelessWidget {
  IphonesetwoItemWidget(
    this.iphonesetwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IphonesetwoItemModel iphonesetwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.v),
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      width: 87.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
              imagePath: iphonesetwoItemModelObj?.image,
              height: 22.v,
              width: 25.h,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            iphonesetwoItemModelObj.news!,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
