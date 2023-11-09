// ignore_for_file: must_be_immutable

part of 'interests_people_bloc.dart';

class InterestsPeopleState extends Equatable {
  InterestsPeopleState({this.interestsPeopleModelObj});

  InterestsPeopleModel? interestsPeopleModelObj;

  @override
  List<Object?> get props => [
        interestsPeopleModelObj,
      ];
  InterestsPeopleState copyWith(
      {InterestsPeopleModel? interestsPeopleModelObj}) {
    return InterestsPeopleState(
      interestsPeopleModelObj:
          interestsPeopleModelObj ?? this.interestsPeopleModelObj,
    );
  }
}
