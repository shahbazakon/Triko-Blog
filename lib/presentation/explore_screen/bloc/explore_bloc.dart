import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/explore_item_model.dart';
import 'package:triko_blog/presentation/explore_screen/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  List<ExploreItemModel> fillExploreItemList() {
    return List.generate(3, (index) => ExploreItemModel());
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(serachboxController: TextEditingController()));
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj
            ?.copyWith(exploreItemList: fillExploreItemList())));
  }
}
