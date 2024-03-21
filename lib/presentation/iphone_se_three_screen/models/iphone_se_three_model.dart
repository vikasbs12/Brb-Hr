// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'iphonesethree_item_model.dart';

/// This class defines the variables used in the [iphone_se_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IphoneSeThreeModel extends Equatable {
  IphoneSeThreeModel({this.iphonesethreeItemList = const []}) {}

  List<IphonesethreeItemModel> iphonesethreeItemList;

  IphoneSeThreeModel copyWith(
      {List<IphonesethreeItemModel>? iphonesethreeItemList}) {
    return IphoneSeThreeModel(
      iphonesethreeItemList:
          iphonesethreeItemList ?? this.iphonesethreeItemList,
    );
  }

  @override
  List<Object?> get props => [iphonesethreeItemList];
}
