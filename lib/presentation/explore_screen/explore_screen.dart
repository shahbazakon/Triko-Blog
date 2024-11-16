import '../explore_screen/widgets/explore_item_widget.dart';
import 'bloc/explore_bloc.dart';
import 'models/explore_item_model.dart';
import 'models/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/appbar_title.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';
import 'package:triko_blog/widgets/custom_button.dart';
import 'package:triko_blog/widgets/custom_search_view.dart';

class ExploreScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBloc>(
        create: (context) =>
            ExploreBloc(ExploreState(exploreModelObj: ExploreModel()))
              ..add(ExploreInitialEvent()),
        child: ExploreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(76),
                leadingWidth: 47,
                leading: AppbarImage(
                    height: getVerticalSize(20),
                    width: getHorizontalSize(19),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 28, top: 15, bottom: 20)),
                title: AppbarTitle(
                    text: "lbl_explore".tr, margin: getMargin(left: 22)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(21),
                      width: getHorizontalSize(20),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 28, top: 14, right: 20)),
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 20, top: 15, right: 48))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 2, bottom: 2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<ExploreBloc, ExploreState,
                              TextEditingController?>(
                          selector: (state) => state.serachboxController,
                          builder: (context, serachboxController) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: serachboxController,
                                hintText: "lbl_search".tr,
                                margin: getMargin(left: 28, right: 28),
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 17,
                                        right: 14,
                                        bottom: 17),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)),
                                suffix: Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(15)),
                                    child: IconButton(
                                        onPressed: () {
                                          serachboxController!.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600))));
                          }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 28, top: 22),
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
                                            getPadding(left: 12, bottom: 1),
                                        child: IntrinsicWidth(
                                            child: Container(
                                                padding: getPadding(
                                                    top: 6, bottom: 6),
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
                                        imagePath:
                                            ImageConstant.imgBackground40x20,
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(20),
                                        margin: getMargin(left: 12, top: 1))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray40087)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 20, top: 28),
                              child: Text("msg_recommended_for".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14))),
                      Padding(
                          padding: getPadding(left: 20, top: 23, right: 20),
                          child: BlocSelector<ExploreBloc, ExploreState,
                                  ExploreModel?>(
                              selector: (state) => state.exploreModelObj,
                              builder: (context, exploreModelObj) {
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
                                    itemCount: exploreModelObj
                                            ?.exploreItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ExploreItemModel model = exploreModelObj
                                              ?.exploreItemList[index] ??
                                          ExploreItemModel();
                                      return ExploreItemWidget(model);
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
}
