// ignore_for_file: must_be_immutable

part of 'iphone_se_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///IphoneSeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class IphoneSeTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the IphoneSeTwo widget is first created.
class IphoneSeTwoInitialEvent extends IphoneSeTwoEvent {
  @override
  List<Object?> get props => [];
}
