import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secundaryFont => 'Mplus1P';

  // primary font
  TextStyle get textPrimaryFontRegular => TextStyle(
        fontFamily: primaryFont,
        fontWeight: FontWeight.normal,
      );

  TextStyle get textPrimaryFontMedium => TextStyle(
        fontFamily: primaryFont,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textPrimaryFontSemiBold => TextStyle(
        fontFamily: primaryFont,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textPrimaryFontBold => TextStyle(
        fontFamily: primaryFont,
        fontWeight: FontWeight.bold,
      );

  TextStyle get textPrimaryFontExtraBold => TextStyle(
        fontFamily: primaryFont,
        fontWeight: FontWeight.w800,
      );

  // secundary font
  TextStyle get textSecundaryFontRegular => TextStyle(
        fontFamily: secundaryFont,
        fontWeight: FontWeight.normal,
      );

  TextStyle get textSecundaryFontMedium => TextStyle(
        fontFamily: secundaryFont,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textSecundaryFontBold => TextStyle(
        fontFamily: secundaryFont,
        fontWeight: FontWeight.bold,
      );

  TextStyle get textSecundaryFontExtraBold => TextStyle(
        fontFamily: secundaryFont,
        fontWeight: FontWeight.w800,
      );

  TextStyle get labelTextField => textSecundaryFontRegular.copyWith(
        color: ColorsApp.instance.greydart,
      );

  TextStyle get textSecundaryFontExtraBoldPrimaryColor =>
      textSecundaryFontExtraBold.copyWith(
        color: ColorsApp.instance.primary,
      );
}

extension TextStylesExtentions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
