// ignore_for_file: must_be_immutable

part of 'interests_people_bloc.dart';

@immutable
abstract class InterestsPeopleEvent extends Equatable {}

class InterestsPeopleInitialEvent extends InterestsPeopleEvent {
  @override
  List<Object?> get props => [];
}
