import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_koku_app/pages/discovery_details.dart';
import 'package:flutter_koku_app/widgets/image_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../all_providers.dart';
import '../constans/app_constans.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Sabitler.mainColor2,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1.5,
                  collapseMode: CollapseMode.parallax,
                  titlePadding: const EdgeInsets.all(12),
                  title: Text(
                    'Kendi kokunu keşfet!',
                    style: GoogleFonts.unna(
                        textStyle: Sabitler.getSliverAppbarTextStyle(),
                        shadows: [
                          const Shadow(color: Colors.black, blurRadius: 4)
                        ]),
                  ),
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/kokunukesfet.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                expandedHeight: 200,
                backgroundColor: Sabitler.mainColor2NoOpacity,
                pinned: true,
                primary: true,
                elevation: 4,
              ),
              buildPreferences(),
            ],
          ),
        ));
  }
}

Widget buildPreferences() => const SliverToBoxAdapter(
      child: _Preferences(

      ),
    );

class _Preferences extends ConsumerWidget {
   const _Preferences({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var preferencesModel = ref.watch(preferencesModelProvider);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, childAspectRatio: 1.6),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      shrinkWrap: true,
      primary: false,
      itemCount: preferencesModel.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => DiscoveryDetails(
                      preferencesModel: preferencesModel[index],
                    )));
          },
          child: ImageContainer(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            imageAsset: preferencesModel[index].backgroundImage!,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.transparent
                          ]),
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AutoSizeText(
                        preferencesModel[index].title!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.playfairDisplay(
                            textStyle: Sabitler.getSliverAppbarTextStyle(),
                            shadows: [
                              const Shadow(color: Colors.black, blurRadius: 4)
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: AutoSizeText(
                          preferencesModel[index].subtitle!,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: GoogleFonts.unna(
                              textStyle: Sabitler.getSliverAppbarSubTextStyle(),
                              fontStyle: FontStyle.italic,
                              shadows: [
                                const Shadow(color: Colors.black, blurRadius: 4)
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
