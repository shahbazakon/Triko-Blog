// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

@immutable
abstract class ExploreEvent extends Equatable {}

class ExploreInitialEvent extends ExploreEvent {
  @override
  List<Object?> get props => [];
}
