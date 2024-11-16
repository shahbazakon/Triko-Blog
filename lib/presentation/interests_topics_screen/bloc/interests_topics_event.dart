// ignore_for_file: must_be_immutable

part of 'interests_topics_bloc.dart';

@immutable
abstract class InterestsTopicsEvent extends Equatable {}

class InterestsTopicsInitialEvent extends InterestsTopicsEvent {
  @override
  List<Object?> get props => [];
}
