// ignore_for_file: must_be_immutable

part of 'search_topics_bloc.dart';

@immutable
abstract class SearchTopicsEvent extends Equatable {}

class SearchTopicsInitialEvent extends SearchTopicsEvent {
  @override
  List<Object?> get props => [];
}
