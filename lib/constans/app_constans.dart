import 'package:flutter/material.dart';

class Sabitler {
  static const mainColor = Color(0xff4D3D9E);
  static const mainColor2 = Color(0xffD4CCFF);
  static const articleColor = Color(0xffD7CDBF);
  static final dotColor = Colors.grey.shade500;
  static TextStyle getNextAndSkipTextStyle() {
    return const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600);
  }

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700);
  }

  static TextStyle getSubtitleTextStyle() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,);
  }
    static TextStyle getLogoSubtitleTextStyle() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,);
  }

  static TextStyle getAppbarTextStyle() {
    return const TextStyle(
        fontSize: 40, fontWeight: FontWeight.w600, color: Sabitler.mainColor);
  }

  static TextStyle getSliverAppbarTextStyle() {
    return const TextStyle(
        fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getPreferencesTitleStyle() {
    return const TextStyle(
        fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getSliverAppbarSubTextStyle() {
    return const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);
  }

  static ThemeData getThemeData() {
    return ThemeData(
        primaryColor: mainColor2,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Sabitler.mainColor2,
            elevation: 1.0,
            selectedItemColor: Sabitler.mainColor,
            unselectedItemColor: Colors.white));
  }

  static TextStyle getBottomTextStyle() {
    return const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: Sabitler.mainColor);
  }

  static TextStyle getArticleTitleTextStyle() {
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  }

    static TextStyle getArticleInsideTitleTextStyle() {
    return const TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  }

      static TextStyle getArticleInsideSubtitleTextStyle() {
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic);
  }
        static TextStyle getArticleInsideSubtitle2TextStyle() {
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.w600);
  }

  static TextStyle getArticleSubtitleTextStyle() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle getArticleTextStyle() {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
  }

  static TextStyle getFragranceTitleTS() {
    return const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Sabitler.mainColor,
        fontFamily: 'Chanel',);
  }
    static TextStyle getProductBrandTitleTS() {
    return const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black54,
        fontFamily: 'Chanel',);
  }

  static TextStyle getFragranceArticleTS() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.7,
    );
  }

  static TextStyle getFragranceArticleTitle() {
    return const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Color(0xffe1bd7c),
        fontFamily: 'Chanel');
  }

  static TextStyle getButtonTextStyle() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Chanel');
  }

  static TextStyle getpreferenceDetailTitle() {
    return const TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w600,
    );
  }
}
