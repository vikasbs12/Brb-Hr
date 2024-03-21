// ignore_for_file: must_be_immutable

part of 'iphone_se_two_bloc.dart';

/// Represents the state of IphoneSeTwo in the application.
class IphoneSeTwoState extends Equatable {
  IphoneSeTwoState({this.iphoneSeTwoModelObj});

  IphoneSeTwoModel? iphoneSeTwoModelObj;

  @override
  List<Object?> get props => [
        iphoneSeTwoModelObj,
      ];

  IphoneSeTwoState copyWith({IphoneSeTwoModel? iphoneSeTwoModelObj}) {
    return IphoneSeTwoState(
      iphoneSeTwoModelObj: iphoneSeTwoModelObj ?? this.iphoneSeTwoModelObj,
    );
  }
}
