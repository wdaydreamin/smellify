import 'package:flutter/material.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/pages/my_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  bool isLastPage = false;

  Widget buildPage({
    required String image,
    required title,
    required subtitle,
  }) =>
      Container(
        decoration: const BoxDecoration(
          gradient: (LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Sabitler.mainColor, Sabitler.mainColor2])),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              title,
              style: GoogleFonts.playfairDisplay(
                  textStyle: Sabitler.getTitleTextStyle()),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              subtitle,
              style: GoogleFonts.sourceSansPro(
                textStyle: Sabitler.getSubtitleTextStyle(),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            buildPage(
              image: 'assets/images/profondowp.jpg',
              title: 'Smellify',
              subtitle: 'Kokuların yolculuğuna hoş geldin!',
            ),
            buildPage(
              image: 'assets/images/woman.jpg',
              title: 'Parfümler ve Notalar',
              subtitle:
                  'Parfümler ve içerikleri ile alakalı bilgi sahibi olun.',
            ),
            buildPage(
              image: 'assets/images/turuncgilnota.jpg',
              title: 'Keşif',
              subtitle: 'Yapacağınız seçimlerle kendi kokunuzu keşfedin.',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: Sabitler.mainColor,
                  minimumSize: const Size.fromHeight(90)),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);
                // ignore: use_build_context_synchronously
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: Text(
                'BAŞLA!',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,)),
              ))
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => _controller.jumpToPage(
                            2,
                          ),
                      child: Text(
                        'ATLA',
                        style: GoogleFonts.poppins(
                            textStyle: Sabitler.getNextAndSkipTextStyle()),
                      )),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      effect: WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 10,
                          dotColor: Sabitler.dotColor,
                          activeDotColor: Sabitler.mainColor),
                      onDotClicked: (index) => _controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                      count: 3,
                    ),
                  ),
                  TextButton(
                      onPressed: () => _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut),
                      child: Text('SONRAKİ',
                          style: GoogleFonts.poppins(
                            textStyle: Sabitler.getNextAndSkipTextStyle(),
                          )))
                ],
              ),
            ),
    );
  }
}
