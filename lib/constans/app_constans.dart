import 'package:flutter/material.dart';

class Sabitler {
  static final mainColor = Colors.deepPurple.shade800.withOpacity(0.8);
  static final mainColorNoOpacity = Colors.deepPurple.shade800;
  static final mainColor2 = Colors.deepPurple.shade200.withOpacity(0.8);
  static const articleColor = Color(0xffD7CDBF);
  static final mainColor2NoOpacity = Colors.deepPurple.shade200;
  static final dotColor = Colors.grey.shade500;
  static TextStyle getNextAndSkipTextStyle() {
    return TextStyle(
        color: Sabitler.mainColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        shadows: const [Shadow(color: Colors.black, blurRadius: 0.4)]);
  }

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Sabitler.mainColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        shadows: const [Shadow(color: Colors.black, blurRadius: 0.2)]);
  }

  static TextStyle getSubtitleTextStyle() {
    return const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        shadows: [Shadow(color: Colors.black, blurRadius: 0.2)]);
  }
    static TextStyle getLogoSubtitleTextStyle() {
    return const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        color: Colors.black,);
  }

  static TextStyle getAppbarTextStyle() {
    return const TextStyle(
        fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getSliverAppbarTextStyle() {
    return const TextStyle(
        fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getPreferencesTitleStyle() {
    return const TextStyle(
        fontSize: 60, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static TextStyle getSliverAppbarSubTextStyle() {
    return const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);
  }

  static ThemeData getThemeData() {
    return ThemeData(
        primaryColor: mainColor2,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Sabitler.mainColor2,
            elevation: 1.0,
            selectedItemColor: Sabitler.mainColor,
            unselectedItemColor: Colors.white));
  }

  static TextStyle getBottomTextStyle() {
    return TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Sabitler.mainColor);
  }

  static TextStyle getArticleTitleTextStyle() {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
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
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);
  }

  static TextStyle getFragranceTitleTS() {
    return const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'Chanel',
        shadows: [Shadow(color: Colors.black, blurRadius: 2)]);
  }

  static TextStyle getFragranceArticleTS() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    );
  }

  static TextStyle getFragranceArticleTitle() {
    return const TextStyle(
        fontSize: 20,
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
