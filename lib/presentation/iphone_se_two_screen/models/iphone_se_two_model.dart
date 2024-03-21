// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'iphonesetwo_item_model.dart';

/// This class defines the variables used in the [iphone_se_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IphoneSeTwoModel extends Equatable {
  IphoneSeTwoModel({this.iphonesetwoItemList = const []}) {}

  List<IphonesetwoItemModel> iphonesetwoItemList;

  IphoneSeTwoModel copyWith({List<IphonesetwoItemModel>? iphonesetwoItemList}) {
    return IphoneSeTwoModel(
      iphonesetwoItemList: iphonesetwoItemList ?? this.iphonesetwoItemList,
    );
  }

  @override
  List<Object?> get props => [iphonesetwoItemList];
}
