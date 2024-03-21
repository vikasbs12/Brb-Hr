import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'widgets/iphonesethree_item_widget.dart';
import 'models/iphonesethree_item_model.dart';
import 'models/iphone_se_three_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/app_export.dart';
import 'bloc/iphone_se_three_bloc.dart';

class IphoneSeThreeScreen extends StatelessWidget {
  const IphoneSeThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<IphoneSeThreeBloc>(
      create: (context) => IphoneSeThreeBloc(IphoneSeThreeState(
        iphoneSeThreeModelObj: IphoneSeThreeModel(),
      ))
        ..add(IphoneSeThreeInitialEvent()),
      child: IphoneSeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildCalendar(context),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "lbl_assignments".tr,
                    style: CustomTextStyles.labelMediumPoppinsWhiteA700,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildIPhoneSEThree(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildNav(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<IphoneSeThreeBloc, IphoneSeThreeState>(
      builder: (context, state) {
        return SizedBox(
          height: 291.v,
          width: 296.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              selectedDayHighlightColor: Color(0XFFF04D23),
              firstDayOfWeek: 0,
              selectedDayTextStyle: TextStyle(
                color: Color(0XFFFFFFFF),
                fontFamily: 'Avenir Next LT Pro',
                fontWeight: FontWeight.w600,
              ),
              dayTextStyle: TextStyle(
                color: appTheme.whiteA700,
                fontFamily: 'Avenir Next LT Pro',
                fontWeight: FontWeight.w600,
              ),
              dayBorderRadius: BorderRadius.circular(
                15.h,
              ),
            ),
            value: state.selectedDatesFromCalendar1 ?? [],
            onValueChanged: (dates) {
              state.selectedDatesFromCalendar1 = dates;
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIPhoneSEThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder30,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup8,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BlocSelector<IphoneSeThreeBloc, IphoneSeThreeState,
          IphoneSeThreeModel?>(
        selector: (state) => state.iphoneSeThreeModelObj,
        builder: (context, iphoneSeThreeModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: iphoneSeThreeModelObj?.iphonesethreeItemList.length ?? 0,
            itemBuilder: (context, index) {
              IphonesethreeItemModel model =
                  iphoneSeThreeModelObj?.iphonesethreeItemList[index] ??
                      IphonesethreeItemModel();
              return IphonesethreeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNav(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 37.h,
        right: 34.h,
        bottom: 16.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Text(
                "lbl_home".tr,
                style: CustomTextStyles.labelMediumPoppinsBlue900,
              ),
            ],
          ),
          _buildNavElement(
            context,
            merchant: ImageConstant.imgHistory,
            navLabel: "lbl_history".tr,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgQr,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Text(
                "lbl_qr".tr,
                style: CustomTextStyles.labelMediumPoppinsGray500,
              ),
            ],
          ),
          _buildNavElement(
            context,
            merchant: ImageConstant.imgMerchant,
            navLabel: "lbl_market".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNavElement(
    BuildContext context, {
    required String merchant,
    required String navLabel,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: merchant,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Text(
          navLabel,
          style: CustomTextStyles.labelMediumPoppinsGray500.copyWith(
            color: appTheme.gray500,
          ),
        ),
      ],
    );
  }
}
