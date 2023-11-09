import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewartItemModel extends Equatable {
  ChipviewartItemModel({this.artTxt = "Art", this.isSelected = false});

  String artTxt;

  bool isSelected;

  ChipviewartItemModel copyWith({String? artTxt, bool? isSelected}) {
    return ChipviewartItemModel(
      artTxt: artTxt ?? this.artTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [artTxt, isSelected];
}
