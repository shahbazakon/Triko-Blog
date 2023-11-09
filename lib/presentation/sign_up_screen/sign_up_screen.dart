import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/domain/googleauth/google_auth_helper.dart';
import 'package:triko_blog/domain/facebookauth/facebook_auth_helper.dart';

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 28, top: 26, right: 28, bottom: 26),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDhiwiseblackmonogram,
                            height: getSize(59),
                            width: getSize(59)),
                        Padding(
                            padding: getPadding(top: 41),
                            child: Text("lbl_register_now".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPlantagenetCherokee32)),
                        GestureDetector(
                            onTap: () {
                              onTapRowgoogleone(context);
                            },
                            child: Container(
                                margin: getMargin(top: 27, right: 1),
                                padding: getPadding(
                                    left: 15, top: 10, right: 15, bottom: 10),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder20),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGoogle1,
                                      height: getSize(21),
                                      width: getSize(21),
                                      margin: getMargin(top: 1, bottom: 1)),
                                  Padding(
                                      padding: getPadding(left: 52, top: 2),
                                      child: Text("msg_sign_up_with_go".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular14))
                                ]))),
                        GestureDetector(
                            onTap: () {
                              onTapRowfacebookone(context);
                            },
                            child: Container(
                                margin: getMargin(top: 14, right: 1),
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
                                      padding: getPadding(left: 45, top: 2),
                                      child: Text("msg_sign_up_with_fa".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular14))
                                ]))),
                        Container(
                            margin: getMargin(top: 14, right: 1),
                            padding: getPadding(
                                left: 15, top: 10, right: 15, bottom: 10),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTwitter1,
                                  height: getSize(19),
                                  width: getSize(19),
                                  margin: getMargin(top: 3, bottom: 1)),
                              Padding(
                                  padding: getPadding(left: 56, top: 2),
                                  child: Text("msg_sign_up_with_tw".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14))
                            ])),
                        Container(
                            margin: getMargin(top: 15, right: 1),
                            padding: getPadding(
                                left: 15, top: 10, right: 15, bottom: 10),
                            decoration: AppDecoration.outlineBlack900.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgAppleblacklogo,
                                  height: getSize(20),
                                  width: getSize(20),
                                  margin: getMargin(top: 1, bottom: 2)),
                              Padding(
                                  padding: getPadding(left: 58, top: 2),
                                  child: Text("msg_sign_up_with_ap".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14))
                            ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    getPadding(left: 35, top: 36, right: 46),
                                child: Row(children: [
                                  Text("msg_already_have_an".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular14),
                                  Padding(
                                      padding: getPadding(left: 6),
                                      child: Text("lbl_sign_in".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14LightblueA200))
                                ]))),
                        Spacer(),
                        Container(
                            width: getHorizontalSize(314),
                            margin: getMargin(bottom: 14),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_by_signing_up2".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black9007f,
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_terms_of_servic".tr,
                                      style: TextStyle(
                                          color: ColorConstant.lightBlueA200,
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "msg_and_acknowledge".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black9007f,
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "lbl_privacy_policy2".tr,
                                      style: TextStyle(
                                          color: ColorConstant.lightBlueA200,
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "lbl_applies_to_you".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black9007f,
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.center))
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
