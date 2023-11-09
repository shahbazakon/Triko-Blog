import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listprofilepicture_item_model.dart';
import 'package:triko_blog/presentation/interests_people_screen/models/interests_people_model.dart';
part 'interests_people_event.dart';
part 'interests_people_state.dart';

class InterestsPeopleBloc
    extends Bloc<InterestsPeopleEvent, InterestsPeopleState> {
  InterestsPeopleBloc(InterestsPeopleState initialState) : super(initialState) {
    on<InterestsPeopleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InterestsPeopleInitialEvent event,
    Emitter<InterestsPeopleState> emit,
  ) async {
    emit(state.copyWith(
        interestsPeopleModelObj: state.interestsPeopleModelObj?.copyWith(
      listprofilepictureItemList: fillListprofilepictureItemList(),
    )));
  }

  List<ListprofilepictureItemModel> fillListprofilepictureItemList() {
    return List.generate(5, (index) => ListprofilepictureItemModel());
  }
}
