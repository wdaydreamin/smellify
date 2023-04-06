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
          ),
        ),
        backgroundColor: Sabitler.mainColor2,
        elevation: 1,
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: MediaQuery.of(context).size.height * 0.16,
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
              'Kokuların yolculuğuna hoş geldiniz!',
              style: GoogleFonts.sourceSansPro(
                textStyle: Sabitler.getLogoSubtitleTextStyle(),
                color: Sabitler.mainColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffBFB2FF),
                  ),
                  child:  Text(
                      "\t   Koku seçimine yeni bir estetik getiren uygulama ile tanışın. Artık kendi kişisel kokunuzu seçmek için saatlerce mağazalarda dolaşmanıza gerek yok. Bu uygulama, kullanıcılarına kokular ile alakalı makaleleri, birtakım parfümleri ve hangi etkenlere göre parfüm seçimi yapmanız konusundaki tercihleri sizlere sunuyor. Ayrıca, kendi cilt tipiniz, yaşınız, anki mevsim gibi faktörlere dayalı olarak size en uygun koku önerileri sizlerle.\n\n  Uygulamamız, her türlü kokuya ve zevke hitap eden geniş bir seçim sunar. Ayrıca, makaleler ve keşfet kısmı sayesinde, koku seçimindeki püf noktalar hakkında da bilgi sahibi olabilirsiniz. Kendi kokunuzu seçmek veya bir hediye seçmek için, uygulamamız size ihtiyacınız olan tüm bilgileri sunar.\n\n Artık koku seçiminde zorlanmayacaksınız ve her zaman kendinize en uygun koku seçeneğini bulacaksınız. "
                      ,style: GoogleFonts.sourceSansPro(textStyle: Sabitler.getArticleTextStyle()),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
