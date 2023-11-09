import '../drawer_menu_draweritem/drawer_menu_draweritem.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/appbar_title.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';
import 'package:triko_blog/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            drawer: DrawerMenuDraweritem(),
            appBar: CustomAppBar(
                height: getVerticalSize(73),
                leadingWidth: 47,
                leading: AppbarImage(
                    height: getVerticalSize(20),
                    width: getHorizontalSize(19),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 28, top: 18, bottom: 17),
                    onTap: () {
                      onTapMenu(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_home".tr, margin: getMargin(left: 22)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(21),
                      width: getHorizontalSize(20),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 28, top: 17, right: 17)),
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 20, top: 18, right: 45))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(83),
                                        text: "lbl_science".tr,
                                        margin: getMargin(bottom: 1),
                                        variant: ButtonVariant.FillBlack9005e,
                                        shape: ButtonShape.CircleBorder20,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle: ButtonFontStyle
                                            .PoppinsRegular14Black900),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding:
                                            getPadding(left: 10, bottom: 1),
                                        child: IntrinsicWidth(
                                            child: Container(
                                                margin: getMargin(right: 10),
                                                padding: getPadding(
                                                    left: 10,
                                                    top: 6,
                                                    bottom: 6),
                                                decoration: AppDecoration
                                                    .fillBlack9005e
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 4),
                                                          child: Text(
                                                              "lbl_lorem_ipsum"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 137,
                                                              top: 5),
                                                          child: Text(
                                                              "lbl_technology"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular14))
                                                    ])))),
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(83),
                                        text: "lbl_design".tr,
                                        margin: getMargin(left: 12, bottom: 1),
                                        variant: ButtonVariant.FillBlack9005e,
                                        shape: ButtonShape.CircleBorder20,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle: ButtonFontStyle
                                            .PoppinsRegular14Black900),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgBackground,
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(24),
                                        margin: getMargin(left: 12, top: 1))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 24, top: 24),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(80),
                                              width: getSize(80),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              40)))),
                                          Container(
                                              width: getHorizontalSize(72),
                                              margin: getMargin(top: 8),
                                              child: Text(
                                                  "msg_lorem_ipsum_dol".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12))
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getSize(80),
                                                  width: getSize(80),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  40)))),
                                              Container(
                                                  width: getHorizontalSize(72),
                                                  margin: getMargin(top: 8),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dol".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 16),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getSize(80),
                                                  width: getSize(80),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  40)))),
                                              Container(
                                                  width: getHorizontalSize(72),
                                                  margin: getMargin(top: 8),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dol".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                    Padding(
                                        padding:
                                            getPadding(left: 16, bottom: 2),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getSize(80),
                                                  width: getSize(80),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          ColorConstant.gray400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  40)))),
                                              Container(
                                                  width: getHorizontalSize(77),
                                                  margin: getMargin(top: 8),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dol".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ]))
                                  ])))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray40087)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 27),
                              child: Text("lbl_top_stories".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14))),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
                              selector: (state) => state.homeModelObj,
                              builder: (context, homeModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 23.0, bottom: 23.0),
                                          child: SizedBox(
                                              width: getHorizontalSize(335),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .gray40087)));
                                    },
                                    itemCount:
                                        homeModelObj?.homeItemList.length ?? 0,
                                    itemBuilder: (context, index) {
                                      HomeItemModel model =
                                          homeModelObj?.homeItemList[index] ??
                                              HomeItemModel();
                                      return HomeItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 26, bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray40087,
                              indent: getHorizontalSize(20),
                              endIndent: getHorizontalSize(20)))
                    ]))));
  }

  onTapMenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
