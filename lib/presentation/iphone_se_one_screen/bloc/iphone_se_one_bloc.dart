import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:prince_s_application9/presentation/iphone_se_one_screen/models/iphone_se_one_model.dart';
part 'iphone_se_one_event.dart';
part 'iphone_se_one_state.dart';

/// A bloc that manages the state of a IphoneSeOne according to the event that is dispatched to it.
class IphoneSeOneBloc extends Bloc<IphoneSeOneEvent, IphoneSeOneState> {
  IphoneSeOneBloc(IphoneSeOneState initialState) : super(initialState) {
    on<IphoneSeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IphoneSeOneInitialEvent event,
    Emitter<IphoneSeOneState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.iphoneSeTwoScreen,
      );
    });
  }
}
