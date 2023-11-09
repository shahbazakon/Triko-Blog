import '../interests_screen/widgets/chipviewart_item_widget.dart';
import 'bloc/interests_bloc.dart';
import 'models/chipviewart_item_model.dart';
import 'models/interests_model.dart';
import 'package:flutter/material.dart';
import 'package:triko_blog/core/app_export.dart';
import 'package:triko_blog/widgets/custom_button.dart';

class InterestsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<InterestsBloc>(
      create: (context) => InterestsBloc(InterestsState(
        interestsModelObj: InterestsModel(),
      ))
        ..add(InterestsInitialEvent()),
      child: InterestsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 37,
            top: 12,
            right: 37,
            bottom: 12,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "lbl_welcome".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold16Black900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  283,
                ),
                margin: getMargin(
                  top: 34,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_what_are_you_in".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold20,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_what_are_you_in".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  229,
                ),
                margin: getMargin(
                  left: 35,
                  top: 8,
                  right: 35,
                ),
                child: Text(
                  "msg_add_or_edit_top".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: BlocSelector<InterestsBloc, InterestsState,
                    InterestsModel?>(
                  selector: (state) => state.interestsModelObj,
                  builder: (context, interestsModelObj) {
                    return Wrap(
                      runSpacing: getVerticalSize(
                        5,
                      ),
                      spacing: getHorizontalSize(
                        5,
                      ),
                      children: List<Widget>.generate(
                        interestsModelObj?.chipviewartItemList.length ?? 0,
                        (index) {
                          ChipviewartItemModel model =
                              interestsModelObj?.chipviewartItemList[index] ??
                                  ChipviewartItemModel();

                          return ChipviewartItemWidget(
                            model,
                            onSelectedChipView: (value) {
                              context.read<InterestsBloc>().add(
                                  UpdateChipViewEvent(
                                      index: index, isSelected: value));
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: getPadding(
            left: 32,
            top: 15,
            right: 32,
            bottom: 15,
          ),
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                height: getVerticalSize(
                  60,
                ),
                text: "lbl_next".tr,
                margin: getMargin(
                  bottom: 22,
                ),
                variant: ButtonVariant.FillLightblueA200,
                shape: ButtonShape.RoundedBorder5,
                padding: ButtonPadding.PaddingAll15,
                fontStyle: ButtonFontStyle.PoppinsBold18WhiteA700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
