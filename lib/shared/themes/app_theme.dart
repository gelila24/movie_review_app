import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //colors
  static const Color primaryColor = Color(0xFF64F1E6);
  static const Color secondaryColor = Color(0xFF0F1111);
  static const Color darkerWhite = Color(0xFFD3D3DA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite = Color.fromRGBO(255, 255, 255, 0.541);
  static const Color black = Color(0xFF000000);
  static const Color darkGrey = Color(0xFF292B37);
  static const Color green = Color(0xFF64F1E6);
  static const Color whiteGrey = Color(0xFFB5BDBF);
  static const Color lightGrey = Color(0xFF758182);
  static const Color iconGrey = Color(0xFF6B7473);
  static const Color hintGrey = Color(0xFF979797);
  static const Color grey = Color(0xFF253036);
  static const Color dark = Color(0xFF22262C);
  static const Color stationCardColor = Color(0xFF1B2228);
  static const Color textDark = Color(0xFF0A0A0C);
  static const Color textGrey = Color(0xFF252929);
  static const Color textGrey2 = Color(0xFF6A727E);
  static const Color dialogDark = Color(0xFF0D181C);
  static const Color dialogLight = Color(0xFF20363A);
  static const Color dialogWhite = Color(0xFF36585E);
  static const Color red = Colors.red;
  static const Color darkBlue = Colors.blueGrey;

//text styles
  static TextStyle mainHeader() => GoogleFonts.rubik(
        fontSize: 32,
        color: white,
        fontWeight: FontWeight.w700,
      );
  static TextStyle headerWhite2() => GoogleFonts.rubik(
        fontSize: 32,
        color: white,
        fontWeight: FontWeight.w400,
      );
  static TextStyle mainTitle() => GoogleFonts.rubik(
        fontSize: 28,
        color: white,
        fontWeight: FontWeight.w500,
      );
  static TextStyle secondaryTitle() =>
      GoogleFonts.rubik(color: Colors.white70, fontSize: 16);
  static TextStyle titleWhite() => GoogleFonts.rubik(
        fontSize: 22,
        color: white,
        fontWeight: FontWeight.w600,
      );
  static TextStyle normal() => GoogleFonts.rubik(
        fontSize: 15,
        color: Colors.amberAccent,
      );
  static TextStyle primaryStyle() => GoogleFonts.rubik(
        fontSize: 22,
        color: primaryColor,
        fontWeight: FontWeight.w500,
      );
  static TextStyle normalWhite() => GoogleFonts.rubik(
        fontSize: 14,
        color: white,
        fontWeight: FontWeight.w500,
      );

  static TextStyle buttonTitle() => GoogleFonts.rubik(
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w500,
      );
  static TextStyle normalLight() => GoogleFonts.rubik(
        fontSize: 20,
        color: white,
        fontWeight: FontWeight.w400,
      );
  static TextStyle textfieldInputStyle() => GoogleFonts.rubik(
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w600,
      );
  static TextStyle bodyWhite() => GoogleFonts.rubik(
        fontSize: 15,
        color: white,
        fontWeight: FontWeight.w400,
      );
  static TextStyle body2() => GoogleFonts.rubik(
        fontSize: 13,
        color: black,
        fontWeight: FontWeight.w600,
        letterSpacing: 6,
      );
  static TextStyle body2White() => GoogleFonts.rubik(
        fontSize: 13,
        color: white,
        fontWeight: FontWeight.w500,
        letterSpacing: 6,
      );
  static TextStyle hintTextStyle() => GoogleFonts.rubik(
        fontSize: 16,
        color: hintGrey,
        fontWeight: FontWeight.w400,
      );
  static TextStyle hintLightTextStyle() => GoogleFonts.rubik(
        fontSize: 18,
        color: lightGrey,
        fontWeight: FontWeight.w400,
      );

  //black text styles
  static TextStyle darkStyle() => GoogleFonts.rubik(
        fontSize: 15,
        color: Colors.white70,
        fontWeight: FontWeight.w400,
      );
  static TextStyle greyStyle() => GoogleFonts.rubik(
        fontSize: 13,
        color: Colors.white54,
        fontWeight: FontWeight.w400,
      );
  static TextStyle blackTitleTextStyle() => GoogleFonts.rubik(
        fontSize: 18,
        color: textDark,
        fontWeight: FontWeight.w500,
      );
  static TextStyle blackTitleSmallTextStyle() => GoogleFonts.rubik(
        fontSize: 13,
        color: textDark,
        fontWeight: FontWeight.w500,
      );
  //box decorations
  static BoxDecoration textFieldDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFF6F6FA),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ],
      );
  static BoxDecoration textFieldDecorationDark() => BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: grey,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ],
      );
  static BoxDecoration primaryColoredRoundedButtonDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: primaryColor,
      );
  static BoxDecoration borderedButton() => BoxDecoration(
        border: Border.all(
          color: green,
        ),
        borderRadius: BorderRadius.circular(13),
      );
  static BoxDecoration bottomNavigationDecorationDark() => BoxDecoration(
        border: Border.all(
          color: dark,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      );
  static BoxDecoration borderDecoration() =>
      BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 1,
          color: secondaryColor.withOpacity(0.3),
        )
      ]);
  static BoxDecoration movieCardDecoration({Color? color}) => BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: darkGrey,
          boxShadow: [
            BoxShadow(
                blurRadius: 33,
                offset: const Offset(2, 12),
                color: secondaryColor.withOpacity(0.17))
          ]);

//Input decoration
  static InputDecoration textFieldInputDecoration() => const InputDecoration(
      border: InputBorder.none,
      // hintStyle: AppTheme.hintTextStyle(),
      contentPadding: EdgeInsets.only(left: 10));

  static ThemeData themeData = ThemeData(scaffoldBackgroundColor: black);
}
