// ignore_for_file: must_be_immutable

part of 'privacy_policy_bloc.dart';

class PrivacyPolicyState extends Equatable {
  PrivacyPolicyState({this.privacyPolicyModelObj});

  PrivacyPolicyModel? privacyPolicyModelObj;

  @override
  List<Object?> get props => [
        privacyPolicyModelObj,
      ];
  PrivacyPolicyState copyWith({PrivacyPolicyModel? privacyPolicyModelObj}) {
    return PrivacyPolicyState(
      privacyPolicyModelObj:
          privacyPolicyModelObj ?? this.privacyPolicyModelObj,
    );
  }
}
