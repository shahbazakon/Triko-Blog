import 'bloc/search_topics_bloc.dart';
import 'models/search_topics_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';
import 'package:triko_blog/widgets/custom_search_view.dart';

class SearchTopicsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTopicsBloc>(
        create: (context) => SearchTopicsBloc(
            SearchTopicsState(searchTopicsModelObj: SearchTopicsModel()))
          ..add(SearchTopicsInitialEvent()),
        child: SearchTopicsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTopicsBloc, SearchTopicsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(62),
                  leadingWidth: 34,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 10, top: 16, bottom: 16),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  title: BlocSelector<SearchTopicsBloc, SearchTopicsState,
                          TextEditingController?>(
                      selector: (state) => state.searchBarController,
                      builder: (context, searchBarController) {
                        return CustomSearchView(
                            width: getHorizontalSize(311),
                            focusNode: FocusNode(),
                            controller: searchBarController,
                            hintText: "lbl_search".tr,
                            margin: getMargin(left: 10),
                            prefix: Container(
                                margin: getMargin(
                                    left: 12, top: 17, right: 14, bottom: 17),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(48)),
                            suffix: Padding(
                                padding: EdgeInsets.only(
                                    right: getHorizontalSize(15)),
                                child: IconButton(
                                    onPressed: () {
                                      searchBarController!.clear();
                                    },
                                    icon: Icon(Icons.clear,
                                        color: Colors.grey.shade600))));
                      })),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 20, top: 18, right: 20, bottom: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_explore_topics".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold20),
                        Padding(
                            padding: getPadding(top: 8),
                            child: Text("lbl_books".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Text("lbl_fiction".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("lbl_comics".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("lbl_art".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Text("lbl_visual_design".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("lbl_technology".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 7),
                            child: Text("lbl_science".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("lbl_business".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Text("lbl_psychology".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 9),
                            child: Text("lbl_creativity".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 7),
                            child: Text("lbl_education".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("lbl_feminism".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Text("msg_artificial_inte".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 7),
                            child: Text("lbl_health".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20)),
                        Padding(
                            padding: getPadding(top: 12, bottom: 5),
                            child: Text("lbl_design".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular20))
                      ]))));
    });
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
