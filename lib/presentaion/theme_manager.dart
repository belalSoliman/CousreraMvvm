import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/color_manager.dart';
import 'package:mvvmapp/presentaion/font_manager.dart';
import 'package:mvvmapp/presentaion/styles_manager.dart';
import 'package:mvvmapp/presentaion/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManger.primary,
    primaryColorDark: ColorManger.darkPrimary,
    disabledColor: ColorManger.grey1,
    splashColor: ColorManger.lightPrimary,
    //cardView theme
    cardTheme: CardTheme(
        color: ColorManger.white,
        shadowColor: ColorManger.grey,
        elevation: AppSize.s4),
    //appbar theme
    appBarTheme: AppBarTheme(
      color: ColorManger.primary,
      shadowColor: ColorManger.lightPrimary,
      centerTitle: true,
      elevation: AppSize.s4,
      titleTextStyle:
          getRegualrStyle(fontsize: FontSize.s16, colo: ColorManger.white),
    ),
    //button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManger.grey1,
        buttonColor: ColorManger.primary,
        splashColor: ColorManger.lightPrimary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      textStyle: getRegualrStyle(
        colo: ColorManger.white,
        fontsize: FontSize.s17,
      ),
      backgroundColor: ColorManger.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)),
    )),
    //texttheme
    textTheme: TextTheme(
        headlineLarge: getSemiBoldStyle(
            colo: ColorManger.darkGray, fontsize: FontSize.s16),
        titleMedium: getRegualrStyle(
            colo: ColorManger.lightGrey, fontsize: FontSize.s14),
        bodySmall: getRegualrStyle(
          colo: ColorManger.grey,
        )),
  );
}
