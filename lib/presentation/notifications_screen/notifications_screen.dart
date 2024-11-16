import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(50),
                  leadingWidth: 34,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft24x24,
                      margin: getMargin(left: 10, top: 13, bottom: 13),
                      onTap: () {
                        onTapArrowleft1(context);
                      }),
                  centerTitle: true,
                  title: Text("lbl_activity".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular18),
                  styleType: Style.bgShadowBlack90021),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 20, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 16, right: 33),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplash93bshrwb1yq52x52,
                                      height: getSize(52),
                                      width: getSize(52),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(26)),
                                      margin: getMargin(bottom: 12)),
                                  Expanded(
                                      child: Container(
                                          width: getHorizontalSize(262),
                                          margin: getMargin(left: 11),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_bezaleel_nwabia"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_clapped_for".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black9007f,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "msg_7_things_you_ne"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_5_nov".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black9007f,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ]),
                                              textAlign: TextAlign.left)))
                                ])),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.black90063)),
                        Padding(
                            padding: getPadding(left: 16, top: 19, right: 33),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUnsplash3ujvzg9i2ei52x52,
                                      height: getSize(52),
                                      width: getSize(52),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(26)),
                                      margin: getMargin(bottom: 12)),
                                  Expanded(
                                      child: Container(
                                          width: getHorizontalSize(262),
                                          margin: getMargin(left: 11),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_catalunha_mj".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_responded_to".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black9007f,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "msg_7_things_you_ne"
                                                        .tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)),
                                                TextSpan(
                                                    text: "lbl_1_nov".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black9007f,
                                                        fontSize:
                                                            getFontSize(14),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ]),
                                              textAlign: TextAlign.left)))
                                ])),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.black90063)),
                        Padding(
                            padding: getPadding(left: 16, top: 19, right: 38),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgUnsplashannsvl6ag052x52,
                                  height: getSize(52),
                                  width: getSize(52),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(26))),
                              Expanded(
                                  child: Container(
                                      width: getHorizontalSize(257),
                                      margin: getMargin(
                                          left: 11, top: 5, bottom: 6),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_tisanthan_panch2".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "msg_followed_you".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .black9007f,
                                                    fontSize: getFontSize(14),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ])),
                        Padding(
                            padding: getPadding(top: 31, bottom: 5),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.black90063))
                      ]))));
    });
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
