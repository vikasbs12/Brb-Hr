import 'package:prince_s_application9/widgets/custom_elevated_button.dart';
import 'widgets/iphonesetwo_item_widget.dart';
import 'models/iphonesetwo_item_model.dart';
import 'models/iphone_se_two_model.dart';
import 'package:prince_s_application9/widgets/custom_floating_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/app_export.dart';
import 'bloc/iphone_se_two_bloc.dart';

class IphoneSeTwoScreen extends StatelessWidget {
  const IphoneSeTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IphoneSeTwoBloc>(
        create: (context) => IphoneSeTwoBloc(
            IphoneSeTwoState(iphoneSeTwoModelObj: IphoneSeTwoModel()))
          ..add(IphoneSeTwoInitialEvent()),
        child: IphoneSeTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 50.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 16.v),
                  _buildTwentyNine(context),
                  SizedBox(height: 11.v),
                  _buildTwentySeven(context),
                  SizedBox(height: 23.v),
                  _buildFifteen(context),
                  SizedBox(height: 4.v),
                  _buildIPhoneSETwo(context)
                ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 9.h, right: 36.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 24.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.h, vertical: 6.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.only(left: 11.h),
                                child: Text("lbl_attendence".tr,
                                    style:
                                        CustomTextStyles.labelSmallIndigoA700)),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: 71.h,
                                    margin: EdgeInsets.only(left: 6.h),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 26.h),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                fs.Svg(ImageConstant.imgGroup7),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 59.v),
                                          Container(
                                              height: 11.adaptSize,
                                              width: 11.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .primaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h),
                                                  border: Border.all(
                                                      color:
                                                          appTheme.indigoA400,
                                                      width: 9.h)))
                                        ]))),
                            SizedBox(height: 3.v),
                            CustomElevatedButton(
                                width: 68.h,
                                text: "lbl_view".tr,
                                margin: EdgeInsets.only(left: 3.h),
                                onPressed: () {
                                  onTapView(context);
                                })
                          ]))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 24.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                      decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 22.v),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 70.v,
                                    width: 71.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup7,
                                              height: 70.v,
                                              width: 71.h,
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: 11.adaptSize,
                                                  width: 11.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.black900,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.h),
                                                      border: Border.all(
                                                          color: appTheme
                                                              .indigoA400,
                                                          width: 9.h))))
                                        ]))),
                            SizedBox(height: 3.v),
                            CustomElevatedButton(
                                width: 68.h, text: "lbl_pay_fee".tr)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return SizedBox(
        height: 181.v,
        width: 294.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: AppDecoration.outlineSecondaryContainer,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLine4,
                        height: 6.v,
                        width: 1.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 92.h)),
                    SizedBox(height: 15.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 17.h, vertical: 22.v),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder38),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(left: 4.h, right: 6.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        height: 29.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 35.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 56.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 8.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 20.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 44.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 64.v,
                                        width: 27.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 51.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 13.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 23.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 41.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h))),
                                    Container(
                                        height: 33.v,
                                        width: 27.h,
                                        margin: EdgeInsets.only(top: 31.v),
                                        decoration: BoxDecoration(
                                            color: appTheme.indigoA700,
                                            borderRadius:
                                                BorderRadius.circular(5.h)))
                                  ])),
                          SizedBox(height: 6.v),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 6.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_m".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, bottom: 1.v),
                                        child: Text("lbl_t".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 27.h, bottom: 1.v),
                                        child: Text("lbl_w".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 27.h, bottom: 1.v),
                                        child: Text("lbl_t".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 29.h, bottom: 1.v),
                                        child: Text("lbl_f".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Spacer(),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_s".tr,
                                            style:
                                                theme.textTheme.labelMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 18.h),
                                        child: Text("lbl_today".tr,
                                            style: theme.textTheme.labelMedium))
                                  ])),
                          SizedBox(height: 11.v),
                          Opacity(opacity: 0.5, child: Divider())
                        ]))
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text("lbl_home_work".tr,
                      style: theme.textTheme.labelLarge)))
        ]));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_school_updates".tr, style: theme.textTheme.labelLarge),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("lbl_view_more".tr,
                  style: CustomTextStyles.bodySmallGray700))
        ]));
  }

  /// Section Widget
  Widget _buildIPhoneSETwo(BuildContext context) {
    return SizedBox(
        height: 87.v,
        child:
            BlocSelector<IphoneSeTwoBloc, IphoneSeTwoState, IphoneSeTwoModel?>(
                selector: (state) => state.iphoneSeTwoModelObj,
                builder: (context, iphoneSeTwoModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 9.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 15.h);
                      },
                      itemCount:
                          iphoneSeTwoModelObj?.iphonesetwoItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        IphonesetwoItemModel model =
                            iphoneSeTwoModelObj?.iphonesetwoItemList[index] ??
                                IphonesetwoItemModel();
                        return IphonesetwoItemWidget(model);
                      });
                }));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 38,
        width: 36,
        backgroundColor: appTheme.purple300.withOpacity(0.2),
        child: CustomImageView(
            imagePath: ImageConstant.imgIconBriefcaseOutline,
            height: 19.0.v,
            width: 18.0.h));
  }

  /// Navigates to the iphoneSeThreeScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphoneSeThreeScreen,
    );
  }
}
