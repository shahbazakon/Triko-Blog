// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

class ExploreState extends Equatable {
  ExploreState({
    this.serachboxController,
    this.exploreModelObj,
  });

  TextEditingController? serachboxController;

  ExploreModel? exploreModelObj;

  @override
  List<Object?> get props => [
        serachboxController,
        exploreModelObj,
      ];
  ExploreState copyWith({
    TextEditingController? serachboxController,
    ExploreModel? exploreModelObj,
  }) {
    return ExploreState(
      serachboxController: serachboxController ?? this.serachboxController,
      exploreModelObj: exploreModelObj ?? this.exploreModelObj,
    );
  }
}
