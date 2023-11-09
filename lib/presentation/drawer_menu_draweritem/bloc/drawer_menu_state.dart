// ignore_for_file: must_be_immutable

part of 'drawer_menu_bloc.dart';

class DrawerMenuState extends Equatable {
  DrawerMenuState({this.drawerMenuModelObj});

  DrawerMenuModel? drawerMenuModelObj;

  @override
  List<Object?> get props => [
        drawerMenuModelObj,
      ];
  DrawerMenuState copyWith({DrawerMenuModel? drawerMenuModelObj}) {
    return DrawerMenuState(
      drawerMenuModelObj: drawerMenuModelObj ?? this.drawerMenuModelObj,
    );
  }
}
