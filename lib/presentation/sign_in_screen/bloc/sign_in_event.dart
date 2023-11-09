// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {}

class SignInInitialEvent extends SignInEvent {
  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends SignInEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignInEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}
