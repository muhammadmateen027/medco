import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ChipThemeData choiceChipTheme(ThemeData theme) {
    return ChipThemeData(
      backgroundColor: theme.chipTheme.backgroundColor,
      deleteIconColor: Colors.red,
      disabledColor: Colors.black12,
      selectedColor: AppColor.appColor,
      secondarySelectedColor: AppColor.appLightColor,
      padding: EdgeInsets.all(4.0),
      shape: StadiumBorder(),
      labelStyle: theme.chipTheme.labelStyle,
      secondaryLabelStyle: theme.chipTheme.secondaryLabelStyle,
      brightness: theme.chipTheme.brightness,
    );
  }

  static AppBarTheme appBarTheme({required TextTheme textTheme}) {
    return AppBarTheme(
      color: AppColor.appColor,
      brightness: Brightness.dark,
      centerTitle: Platform.isIOS,
      elevation: 0.0,
      textTheme: textTheme,
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }

  static DialogTheme dialogTheme({required TextTheme textTheme}) {
    return DialogTheme(
      backgroundColor:  Colors.white,
      titleTextStyle: GoogleFonts.poppins(textStyle: textTheme.headline6),
      contentTextStyle: GoogleFonts.poppins(textStyle: textTheme.bodyText1),
    );
  }

  static TextTheme appTextTheme({required TextTheme textTheme}) {
    return GoogleFonts.latoTextTheme(textTheme).copyWith(
      bodyText1: GoogleFonts.poppins(textStyle: textTheme.bodyText1),
      bodyText2: GoogleFonts.poppins(textStyle: textTheme.bodyText2),
      headline6: GoogleFonts.poppins(textStyle: textTheme.headline6),
      headline5: GoogleFonts.poppins(textStyle: textTheme.headline5),
      headline4: GoogleFonts.poppins(textStyle: textTheme.headline4),
      headline3: GoogleFonts.poppins(textStyle: textTheme.headline3),
      headline2: GoogleFonts.poppins(textStyle: textTheme.headline2),
      headline1: GoogleFonts.poppins(textStyle: textTheme.headline1),
      caption: GoogleFonts.poppins(textStyle: textTheme.caption),
      button: GoogleFonts.poppins(textStyle: textTheme.button),
      overline: GoogleFonts.poppins(textStyle: textTheme.overline),
    );
  }

  static ThemeData lightTheme(ThemeData theme) {
    return ThemeData(
      primarySwatch:
      MaterialColor(AppColor.appColorCode, AppColor.primaryColor),
      primaryColor: AppColor.appColor,
      primaryColorLight: AppColor.appColor.withOpacity(0.5),
      primaryColorDark: AppColor.appDarkColor,
      secondaryHeaderColor: AppColor.secondaryColor,
      backgroundColor: Colors.white.withOpacity(0.9),
      buttonColor: AppColor.appColor,
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      appBarTheme: appBarTheme(textTheme: theme.textTheme),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: appTextTheme(textTheme: theme.textTheme),
      chipTheme: choiceChipTheme(theme),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.secondaryColor,
        disabledColor: AppColor.grey,

      ),
      indicatorColor: AppColor.contrast,
      dialogTheme: dialogTheme(textTheme: theme.textTheme),
    );
  }

}
