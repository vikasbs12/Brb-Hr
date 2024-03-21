import 'package:flutter/material.dart';
import '../presentation/iphone_se_one_screen/iphone_se_one_screen.dart';
import '../presentation/iphone_se_two_screen/iphone_se_two_screen.dart';
import '../presentation/iphone_se_three_screen/iphone_se_three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphoneSeOneScreen = '/iphone_se_one_screen';

  static const String iphoneSeTwoScreen = '/iphone_se_two_screen';

  static const String iphoneSeThreeScreen = '/iphone_se_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphoneSeOneScreen: IphoneSeOneScreen.builder,
        iphoneSeTwoScreen: IphoneSeTwoScreen.builder,
        iphoneSeThreeScreen: IphoneSeThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: IphoneSeOneScreen.builder
      };
}
