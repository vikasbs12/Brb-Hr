// ignore_for_file: must_be_immutable

part of 'iphone_se_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IphoneSeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IphoneSeOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the IphoneSeOne widget is first created.
class IphoneSeOneInitialEvent extends IphoneSeOneEvent {
  @override
  List<Object?> get props => [];
}
