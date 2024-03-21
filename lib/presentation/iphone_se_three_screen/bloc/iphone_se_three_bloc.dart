import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import '../models/iphonesethree_item_model.dart';
import 'package:prince_s_application9/presentation/iphone_se_three_screen/models/iphone_se_three_model.dart';
part 'iphone_se_three_event.dart';
part 'iphone_se_three_state.dart';

/// A bloc that manages the state of a IphoneSeThree according to the event that is dispatched to it.
class IphoneSeThreeBloc extends Bloc<IphoneSeThreeEvent, IphoneSeThreeState> {
  IphoneSeThreeBloc(IphoneSeThreeState initialState) : super(initialState) {
    on<IphoneSeThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IphoneSeThreeInitialEvent event,
    Emitter<IphoneSeThreeState> emit,
  ) async {
    emit(state.copyWith(
        iphoneSeThreeModelObj: state.iphoneSeThreeModelObj?.copyWith(
      iphonesethreeItemList: fillIphonesethreeItemList(),
    )));
  }

  List<IphonesethreeItemModel> fillIphonesethreeItemList() {
    return List.generate(1, (index) => IphonesethreeItemModel());
  }
}
