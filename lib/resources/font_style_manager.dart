import 'package:dashboard/resources/color_manager.dart';
import 'package:dashboard/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

abstract class FontStyleManager {
  /// Text Styles
  /// Text Style for Bold
  static TextStyle styleBold16 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s16,
    color: ColorManager.primary,
    fontWeight: FontWeightManager.bold,
  );

  /// Text Style for medium
  static TextStyle styleMedium16 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s16,
    color: ColorManager.secondary,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle styleMedium20 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s20,
    color: ColorManager.white,
    fontWeight: FontWeightManager.medium,
  );

  /// Text Style for regular
  static TextStyle styleRegular16 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s16,
    color: ColorManager.secondary,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle styleRegular12 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s12,
    color: ColorManager.grey,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle styleRegular14 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s14,
    color: ColorManager.secondary,
    fontWeight: FontWeightManager.regular,
  );

  /// Text Style for SemiBold
  static TextStyle styleSemiBold24 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s24,
    color: ColorManager.primary,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle styleSemiBold20 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s20,
    color: ColorManager.secondary,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle styleSemiBold18 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s18,
    color: ColorManager.primary,
    fontWeight: FontWeightManager.semiBold,
  );
  static TextStyle styleSemiBold16 = const TextStyle(
    fontFamily: FontFamilyManager.fontFamily,
    fontSize: FontSize.s16,
    color: ColorManager.secondary,
    fontWeight: FontWeightManager.semiBold,
  );
}
