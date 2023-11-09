import 'package:equatable/equatable.dart';
import 'chipviewart_item_model.dart';

// ignore: must_be_immutable
class InterestsModel extends Equatable {
  InterestsModel({this.chipviewartItemList = const []});

  List<ChipviewartItemModel> chipviewartItemList;

  InterestsModel copyWith({List<ChipviewartItemModel>? chipviewartItemList}) {
    return InterestsModel(
      chipviewartItemList: chipviewartItemList ?? this.chipviewartItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewartItemList];
}
