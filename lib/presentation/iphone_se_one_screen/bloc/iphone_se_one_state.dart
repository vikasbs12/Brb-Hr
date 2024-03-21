// ignore_for_file: must_be_immutable

part of 'iphone_se_one_bloc.dart';

/// Represents the state of IphoneSeOne in the application.
class IphoneSeOneState extends Equatable {
  IphoneSeOneState({this.iphoneSeOneModelObj});

  IphoneSeOneModel? iphoneSeOneModelObj;

  @override
  List<Object?> get props => [
        iphoneSeOneModelObj,
      ];

  IphoneSeOneState copyWith({IphoneSeOneModel? iphoneSeOneModelObj}) {
    return IphoneSeOneState(
      iphoneSeOneModelObj: iphoneSeOneModelObj ?? this.iphoneSeOneModelObj,
    );
  }
}
