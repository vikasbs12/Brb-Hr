// ignore_for_file: must_be_immutable

part of 'iphone_se_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IphoneSeThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IphoneSeThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the IphoneSeThree widget is first created.
class IphoneSeThreeInitialEvent extends IphoneSeThreeEvent {
  @override
  List<Object?> get props => [];
}
