// ignore_for_file: must_be_immutable

part of 'terms_and_conditions_bloc.dart';

@immutable
abstract class TermsAndConditionsEvent extends Equatable {}

class TermsAndConditionsInitialEvent extends TermsAndConditionsEvent {
  @override
  List<Object?> get props => [];
}
