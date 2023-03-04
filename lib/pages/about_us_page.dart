import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../constans/app_constans.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  static const routeName = '/aboutus';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Sabitler.mainColor2,
      appBar: AppBar(
        title: Text(
          'Hakkında',
          style: GoogleFonts.unna(
              textStyle: Sabitler.getAppbarTextStyle(),
              shadows: [const Shadow(color: Colors.black, blurRadius: 4)]),
        ),
        backgroundColor: Sabitler.mainColor2,
        elevation: 1,
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/smellify_logo.png'))),
                ),
                Text(
                  'Smellify',
                  style: GoogleFonts.playfairDisplay(
                      textStyle: Sabitler.getPreferencesTitleStyle(),
                      color: Sabitler.mainColor),
                ),
                Text(
                  'Kokuların yolculuğuna hoş geldiniz.',
                  style: GoogleFonts.unna(
                    textStyle: Sabitler.getLogoSubtitleTextStyle(),
                    color: Sabitler.mainColor,
                  ),
                ),
              ],
            ),
          ),
        
    );
  }
}
