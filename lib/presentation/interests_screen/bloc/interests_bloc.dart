import '../models/chipviewart_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewart_item_model.dart';
import 'package:triko_blog/presentation/interests_screen/models/interests_model.dart';
part 'interests_event.dart';
part 'interests_state.dart';

class InterestsBloc extends Bloc<InterestsEvent, InterestsState> {
  InterestsBloc(InterestsState initialState) : super(initialState) {
    on<InterestsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    InterestsInitialEvent event,
    Emitter<InterestsState> emit,
  ) async {
    emit(state.copyWith(
        interestsModelObj: state.interestsModelObj?.copyWith(
      chipviewartItemList: fillChipviewartItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<InterestsState> emit,
  ) {
    List<ChipviewartItemModel> newList = List<ChipviewartItemModel>.from(
        state.interestsModelObj!.chipviewartItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        interestsModelObj:
            state.interestsModelObj?.copyWith(chipviewartItemList: newList)));
  }

  List<ChipviewartItemModel> fillChipviewartItemList() {
    return List.generate(27, (index) => ChipviewartItemModel());
  }
}
