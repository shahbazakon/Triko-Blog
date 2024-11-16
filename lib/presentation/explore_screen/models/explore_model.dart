import 'package:equatable/equatable.dart';
import 'explore_item_model.dart';

// ignore: must_be_immutable
class ExploreModel extends Equatable {
  ExploreModel({this.exploreItemList = const []});

  List<ExploreItemModel> exploreItemList;

  ExploreModel copyWith({List<ExploreItemModel>? exploreItemList}) {
    return ExploreModel(
      exploreItemList: exploreItemList ?? this.exploreItemList,
    );
  }

  @override
  List<Object?> get props => [exploreItemList];
}
