import 'package:equatable/equatable.dart';
import 'listprofilepicture_item_model.dart';

// ignore: must_be_immutable
class InterestsPeopleModel extends Equatable {
  InterestsPeopleModel({this.listprofilepictureItemList = const []});

  List<ListprofilepictureItemModel> listprofilepictureItemList;

  InterestsPeopleModel copyWith(
      {List<ListprofilepictureItemModel>? listprofilepictureItemList}) {
    return InterestsPeopleModel(
      listprofilepictureItemList:
          listprofilepictureItemList ?? this.listprofilepictureItemList,
    );
  }

  @override
  List<Object?> get props => [listprofilepictureItemList];
}
