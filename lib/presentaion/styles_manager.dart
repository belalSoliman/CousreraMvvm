import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/font_manager.dart';

TextStyle _getTextStyle(double fontsize, FontWeight fontwieght, Color colo) {
  return TextStyle(
      fontSize: fontsize,
      fontWeight: fontwieght,
      color: colo,
      fontFamily: FontConstants.fontFamily);
}

TextStyle getRegualrStyle(
    {double fontsize = FontSize.s12, required Color colo}) {
  return _getTextStyle(
    fontsize,
    FontWeightManger.regular,
    colo,
  );
}

TextStyle getMeduimStyle(
    {double fontsize = FontSize.s12, required Color colo}) {
  return _getTextStyle(
    fontsize,
    FontWeightManger.meduim,
    colo,
  );
}

TextStyle getBoldStyle({double fontsize = FontSize.s18, required Color colo}) {
  return _getTextStyle(
    fontsize,
    FontWeightManger.bold,
    colo,
  );
}

TextStyle getSemiBoldStyle(
    {double fontsize = FontSize.s12, required Color colo}) {
  return _getTextStyle(
    fontsize,
    FontWeightManger.semiBold,
    colo,
  );
}

TextStyle getLightStyle({double fontsize = FontSize.s12, required Color colo}) {
  return _getTextStyle(
    fontsize,
    FontWeightManger.light,
    colo,
  );
}
