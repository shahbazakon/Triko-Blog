// ignore_for_file: must_be_immutable

part of 'privacy_policy_bloc.dart';

@immutable
abstract class PrivacyPolicyEvent extends Equatable {}

class PrivacyPolicyInitialEvent extends PrivacyPolicyEvent {
  @override
  List<Object?> get props => [];
}
