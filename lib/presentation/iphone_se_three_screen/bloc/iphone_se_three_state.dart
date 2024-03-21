// ignore_for_file: must_be_immutable

part of 'iphone_se_three_bloc.dart';

/// Represents the state of IphoneSeThree in the application.
class IphoneSeThreeState extends Equatable {
  IphoneSeThreeState({
    this.selectedDatesFromCalendar1,
    this.iphoneSeThreeModelObj,
  });

  IphoneSeThreeModel? iphoneSeThreeModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        iphoneSeThreeModelObj,
      ];

  IphoneSeThreeState copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    IphoneSeThreeModel? iphoneSeThreeModelObj,
  }) {
    return IphoneSeThreeState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      iphoneSeThreeModelObj:
          iphoneSeThreeModelObj ?? this.iphoneSeThreeModelObj,
    );
  }
}
