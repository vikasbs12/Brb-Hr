import 'package:prince_s_application9/widgets/custom_elevated_button.dart';
import 'models/iphone_se_one_model.dart';
import 'package:flutter/material.dart';
import 'package:prince_s_application9/core/app_export.dart';
import 'bloc/iphone_se_one_bloc.dart';

class IphoneSeOneScreen extends StatelessWidget {
  const IphoneSeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IphoneSeOneBloc>(
        create: (context) => IphoneSeOneBloc(
            IphoneSeOneState(iphoneSeOneModelObj: IphoneSeOneModel()))
          ..add(IphoneSeOneInitialEvent()),
        child: IphoneSeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IphoneSeOneBloc, IphoneSeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 50.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Spacer(),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("msg_education_for_complexity".tr,
                                style: CustomTextStyles
                                    .titleMediumInterSecondaryContainer)),
                        SizedBox(height: 18.v),
                        Container(
                            width: 218.h,
                            margin: EdgeInsets.only(left: 15.h, right: 23.h),
                            child: Text("msg_instant_accurate".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium))
                      ])),
              bottomNavigationBar: _buildGetStarted(context)));
    });
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_get_started".tr,
        margin: EdgeInsets.only(left: 40.h, right: 37.h, bottom: 29.v),
        buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
        buttonTextStyle: theme.textTheme.titleSmall!,
        onPressed: () {
          onTapGetStarted(context);
        });
  }

  /// Navigates to the iphoneSeTwoScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphoneSeTwoScreen,
    );
  }
}
