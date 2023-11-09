import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/domain/googleauth/google_auth_helper.dart';
import 'package:triko_blog/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 27, top: 26, right: 27, bottom: 26),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDhiwiseblackmonogram,
                            height: getSize(59),
                            width: getSize(59)),
                        Padding(
                            padding: getPadding(top: 36),
                            child: Text("lbl_welcome_back".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlantagenetCherokee32)),
                        GestureDetector(
                            onTap: () {
                              onTapRowgoogleone(context);
                            },
                            child: Container(
                                margin: getMargin(left: 1, top: 34, right: 2),
                                padding: getPadding(
                                    left: 15, top: 8, right: 15, bottom: 8),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder20),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGoogle1,
                                          height: getSize(19),
                                          width: getSize(19),
                                          margin: getMargin(top: 5, bottom: 3)),
                                      Padding(
                                          padding: getPadding(left: 61, top: 6),
                                          child: Text("msg_sign_in_with_go".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsRegular14))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapRowfacebookone(context);
                            },
                            child: Container(
                                margin: getMargin(left: 1, top: 14, right: 2),
                                padding: getPadding(
                                    left: 15, top: 10, right: 15, bottom: 10),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder20),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFacebook1,
                                      height: getSize(20),
                                      width: getSize(20),
                                      margin: getMargin(top: 1, bottom: 2)),
                                  Padding(
                                      padding: getPadding(left: 51, top: 2),
                                      child: Text("msg_sign_in_with_fa".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular14))
                                ]))),
                        Container(
                            margin: getMargin(left: 1, top: 14, right: 2),
                            padding: getPadding(
                                left: 15, top: 11, right: 15, bottom: 11),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTwitter1,
                                  height: getSize(19),
                                  width: getSize(19),
                                  margin: getMargin(top: 2)),
                              Padding(
                                  padding: getPadding(left: 63),
                                  child: Text("msg_sign_in_with_tw".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14))
                            ])),
                        Container(
                            margin: getMargin(top: 14, right: 3),
                            padding: getPadding(
                                left: 16, top: 11, right: 16, bottom: 11),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgAppleblacklogo,
                                  height: getSize(20),
                                  width: getSize(20),
                                  margin: getMargin(bottom: 3)),
                              Padding(
                                  padding: getPadding(left: 65, top: 1),
                                  child: Text("msg_sign_in_with_ap".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14))
                            ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 39, top: 36, right: 52, bottom: 5),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("msg_don_t_have_an_a".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular14)),
                                  Padding(
                                      padding: getPadding(left: 7, top: 1),
                                      child: Text("lbl_sign_up".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14LightblueA200))
                                ])))
                      ]))));
    });
  }

  onTapRowgoogleone(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapRowfacebookone(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
