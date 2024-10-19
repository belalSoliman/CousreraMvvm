import 'package:flutter/material.dart';
import 'package:mvvmapp/presentaion/resources/color_manager.dart';
import 'package:mvvmapp/presentaion/resources/font_manager.dart';
import 'package:mvvmapp/presentaion/resources/styles_manager.dart';
import 'package:mvvmapp/presentaion/resources/values_manager.dart';

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

      //input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle:
            getRegualrStyle(colo: ColorManger.grey, fontsize: FontSize.s14),
        labelStyle:
            getMeduimStyle(colo: ColorManger.grey, fontsize: FontSize.s14),
        errorStyle:
            getRegualrStyle(colo: ColorManger.error, fontsize: FontSize.s14),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManger.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManger.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ));
}
