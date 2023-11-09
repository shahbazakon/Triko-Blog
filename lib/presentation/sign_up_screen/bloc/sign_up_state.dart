// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({this.signUpModelObj});

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        signUpModelObj,
      ];
  SignUpState copyWith({SignUpModel? signUpModelObj}) {
    return SignUpState(
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
