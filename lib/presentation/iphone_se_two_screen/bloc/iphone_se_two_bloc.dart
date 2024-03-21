import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/iphonesetwo_item_model.dart';
import 'package:prince_s_application9/presentation/iphone_se_two_screen/models/iphone_se_two_model.dart';
part 'iphone_se_two_event.dart';
part 'iphone_se_two_state.dart';

/// A bloc that manages the state of a IphoneSeTwo according to the event that is dispatched to it.
class IphoneSeTwoBloc extends Bloc<IphoneSeTwoEvent, IphoneSeTwoState> {
  IphoneSeTwoBloc(IphoneSeTwoState initialState) : super(initialState) {
    on<IphoneSeTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    IphoneSeTwoInitialEvent event,
    Emitter<IphoneSeTwoState> emit,
  ) async {
    emit(state.copyWith(
        iphoneSeTwoModelObj: state.iphoneSeTwoModelObj
            ?.copyWith(iphonesetwoItemList: fillIphonesetwoItemList())));
  }

  List<IphonesetwoItemModel> fillIphonesetwoItemList() {
    return [
      IphonesetwoItemModel(
          image: ImageConstant.imgIconBriefcaseOutline, news: "News"),
      IphonesetwoItemModel(
          image: ImageConstant.imgIconBriefcaseOutline, news: "Bullets")
    ];
  }
}
