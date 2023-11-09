// ignore_for_file: must_be_immutable

part of 'drawer_menu_bloc.dart';

@immutable
abstract class DrawerMenuEvent extends Equatable {}

class DrawerMenuInitialEvent extends DrawerMenuEvent {
  @override
  List<Object?> get props => [];
}
