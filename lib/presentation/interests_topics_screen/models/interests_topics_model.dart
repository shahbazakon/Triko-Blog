import 'package:equatable/equatable.dart';
import 'listthumbnail_item_model.dart';

// ignore: must_be_immutable
class InterestsTopicsModel extends Equatable {
  InterestsTopicsModel({this.listthumbnailItemList = const []});

  List<ListthumbnailItemModel> listthumbnailItemList;

  InterestsTopicsModel copyWith(
      {List<ListthumbnailItemModel>? listthumbnailItemList}) {
    return InterestsTopicsModel(
      listthumbnailItemList:
          listthumbnailItemList ?? this.listthumbnailItemList,
    );
  }

  @override
  List<Object?> get props => [listthumbnailItemList];
}
