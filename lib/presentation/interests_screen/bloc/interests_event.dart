// ignore_for_file: must_be_immutable

part of 'interests_bloc.dart';

@immutable
abstract class InterestsEvent extends Equatable {}

class InterestsInitialEvent extends InterestsEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends InterestsEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
