import 'bloc/blog_bloc.dart';
import 'models/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/app_bar/appbar_image.dart';
import 'package:triko_blog/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:triko_blog/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:triko_blog/widgets/app_bar/custom_app_bar.dart';

class BlogScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<BlogBloc>(
      create: (context) => BlogBloc(BlogState(
        blogModelObj: BlogModel(),
      ))
        ..add(BlogInitialEvent()),
      child: BlogScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              height: getVerticalSize(
                59,
              ),
              title: AppbarSubtitle2(
                text: "msg_john_doe_in_lor".tr,
                margin: getMargin(
                  left: 28,
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
                    right: 22,
                    bottom: 4,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 27,
                top: 14,
                right: 27,
                bottom: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      263,
                    ),
                    margin: getMargin(
                      left: 1,
                      right: 56,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol3".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold24,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      319,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 12,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dol4".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMediumItalic14,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBlogthumbnail80x80,
                    height: getVerticalSize(
                      167,
                    ),
                    width: getHorizontalSize(
                      320,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        5,
                      ),
                    ),
                    margin: getMargin(
                      top: 19,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 12,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_image_credit".tr,
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
                              text: "lbl_lorem_ipsum".tr,
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
                  ),
                  Container(
                    width: getHorizontalSize(
                      295,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 30,
                      right: 24,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_duis_aute_irure".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular14,
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
