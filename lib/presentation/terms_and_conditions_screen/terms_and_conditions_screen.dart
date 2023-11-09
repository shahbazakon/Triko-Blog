import 'bloc/terms_and_conditions_bloc.dart';
import 'models/terms_and_conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:triko_blog/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TermsAndConditionsBloc>(
      create: (context) => TermsAndConditionsBloc(TermsAndConditionsState(
        termsAndConditionsModelObj: TermsAndConditionsModel(),
      ))
        ..add(TermsAndConditionsInitialEvent()),
      child: TermsAndConditionsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TermsAndConditionsBloc, TermsAndConditionsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                63,
              ),
              title: AppbarSubtitle2(
                text: "msg_john_doe_in_lor".tr,
                margin: getMargin(
                  left: 16,
                ),
              ),
              actions: [
                Container(
                  height: getSize(
                    3,
                  ),
                  width: getSize(
                    3,
                  ),
                  margin: getMargin(
                    left: 10,
                    top: 34,
                    right: 7,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90087,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                ),
                AppbarSubtitle1(
                  text: "lbl_29_july".tr,
                  margin: getMargin(
                    left: 8,
                    top: 26,
                    right: 7,
                  ),
                ),
                AppbarImage(
                  height: getSize(
                    36,
                  ),
                  width: getSize(
                    36,
                  ),
                  svgPath: ImageConstant.imgCheckmark,
                  margin: getMargin(
                    left: 48,
                    top: 7,
                    right: 34,
                    bottom: 4,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      "msg_terms_and_condi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold18,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "msg_effective_sept".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsLight14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_you_can_see_our2".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_here".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      309,
                    ),
                    margin: getMargin(
                      top: 30,
                      right: 33,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol5".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14Black900a9,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      343,
                    ),
                    margin: getMargin(
                      top: 29,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol4".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14Black900a9,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      343,
                    ),
                    margin: getMargin(
                      top: 29,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol4".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14Black900a9,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      309,
                    ),
                    margin: getMargin(
                      top: 29,
                      right: 33,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol5".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14Black900a9,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_your_account_an".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18Black900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol5".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14Black900a9,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
