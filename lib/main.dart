import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/pages/about_us_page.dart';
import 'package:flutter_koku_app/pages/article_page.dart';
import 'package:flutter_koku_app/pages/discovery_page.dart';
import 'package:flutter_koku_app/pages/fragrances_page.dart';
import 'package:flutter_koku_app/pages/home_page.dart';
import 'package:flutter_koku_app/pages/my_home_page.dart';
import 'package:flutter_koku_app/pages/onboarding_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Sabitler.mainColor2,
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(ProviderScope(
    child: MyApp(
      showHome: showHome,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final bool showHome;
  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Koku 101',
        theme: Sabitler.getThemeData(),
        initialRoute: '/',
        routes: {
          OnboardingPage.routeName: (context) =>
              widget.showHome ? const MyHomePage() : const OnboardingPage(),
          HomePage.routeName: (context) => const HomePage(),
          DiscoverPage.routeName: (context) => const DiscoverPage(),
          ArticlePage.routeName: (context) => const ArticlePage(),
          FragrancePage.routeName: (context) => const FragrancePage(),
          AboutUsPage.routeName: (context) => const AboutUsPage()
        });
  }
}
