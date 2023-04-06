import 'package:flutter/material.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/pages/about_us_page.dart';
import 'package:flutter_koku_app/pages/discovery_page.dart';
import 'package:flutter_koku_app/pages/fragrances_page.dart';
import 'package:flutter_koku_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  late List<Widget> allPages;
  late HomePage homePage;
  late FragrancePage fragrancePage;
  late DiscoverPage discoveryPage;
  late AboutUsPage aboutUsPage;

  @override
  void initState() {
    super.initState();
    homePage = const HomePage();
    fragrancePage = const FragrancePage();
    discoveryPage = const DiscoverPage();
    aboutUsPage = const AboutUsPage();
    allPages = [homePage, fragrancePage, discoveryPage, aboutUsPage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int newIndex) {
          setState(() {
            currentPage = newIndex;
          });
        },
        children: allPages,
      ),
      bottomNavigationBar: GNav(
        
          onTabChange: (int value) {
            setState(() {
              currentPage = value;
              _pageController.animateToPage(value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            });
          },
          activeColor: Sabitler.mainColor,
          color: Colors.black54,
          backgroundColor: Sabitler.mainColor2,
          textStyle:
              GoogleFonts.sourceSansPro(textStyle: Sabitler.getBottomTextStyle()),
          padding: const EdgeInsets.all(18),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Anasayfa',
            ),
            GButton(
              icon: MdiIcons.scent,
              text: 'Kokular',
            ),
            GButton(
              icon: Icons.explore_outlined,
              text: 'Keşfet',
            ),
            GButton(
              icon: Icons.info_outline_rounded,
              text: 'Hakkında',
            ),
          ],
          selectedIndex: currentPage,),
          
    );
  }
}
