import 'package:dashboard/models/size_config.dart';
import 'package:dashboard/resources/build_context_extention.dart';
import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

abstract class FontStyleManager {
  /// Text Styles
  /// Text Style for Bold
  static TextStyle styleBold16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s16),
        color: ColorManager.primary,
        fontWeight: FontWeightManager.bold,
      );

  /// Text Style for medium
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s16),
        color: ColorManager.secondary,
        fontWeight: FontWeightManager.medium,
      );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s20),
        color: ColorManager.white,
        fontWeight: FontWeightManager.medium,
      );

  /// Text Style for regular
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s16),
        color: ColorManager.secondary,
        fontWeight: FontWeightManager.regular,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s12),
        color: ColorManager.grey,
        fontWeight: FontWeightManager.regular,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s14),
        color: ColorManager.secondary,
        fontWeight: FontWeightManager.regular,
      );

  /// Text Style for SemiBold
  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s24),
        color: ColorManager.primary,
        fontWeight: FontWeightManager.semiBold,
      );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s20),
        color: ColorManager.secondary,
        fontWeight: FontWeightManager.semiBold,
      );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s18),
        color: ColorManager.primary,
        fontWeight: FontWeightManager.semiBold,
      );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        fontFamily: FontFamilyManager.fontFamily,
        fontSize: getResponsiveFontSize(context, fontSize: FontSize.s16),
        color: ColorManager.secondary,
        fontWeight: FontWeightManager.semiBold,
      );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = context.screenWidth;
  if (width < SizeConfig.tabletBreakpoint) {
    return width / 800;
  } else if (width < SizeConfig.desktopBreakpoint) {
    return width / 1300;
  } else {
    return width / 1528;
  }
}
