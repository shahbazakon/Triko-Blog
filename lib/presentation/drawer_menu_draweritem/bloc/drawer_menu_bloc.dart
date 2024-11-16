import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:triko_blog/presentation/drawer_menu_draweritem/models/drawer_menu_model.dart';
part 'drawer_menu_event.dart';
part 'drawer_menu_state.dart';

class DrawerMenuBloc extends Bloc<DrawerMenuEvent, DrawerMenuState> {
  DrawerMenuBloc(DrawerMenuState initialState) : super(initialState) {
    on<DrawerMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DrawerMenuInitialEvent event,
    Emitter<DrawerMenuState> emit,
  ) async {}
}
