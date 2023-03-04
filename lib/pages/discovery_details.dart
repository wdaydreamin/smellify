import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_koku_app/constans/app_constans.dart';
import 'package:flutter_koku_app/models/preferences_model.dart';
import 'package:flutter_koku_app/pages/preferences_details.dart';
import 'package:flutter_koku_app/widgets/image_container_second.dart';

import 'package:google_fonts/google_fonts.dart';

class DiscoveryDetails extends StatelessWidget {
  final PreferencesModel preferencesModel;

  const DiscoveryDetails({
    super.key,
    required this.preferencesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Sabitler.mainColor2NoOpacity,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: Sabitler.mainColor),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.5,
              collapseMode: CollapseMode.parallax,
              titlePadding: const EdgeInsets.all(12),
              centerTitle: true,
              title: Text(
                preferencesModel.title!,
                textAlign: TextAlign.center,
                style: GoogleFonts.unna(
                    textStyle: Sabitler.getSliverAppbarTextStyle(),
                    shadows: [
                      const Shadow(color: Colors.black, blurRadius: 4)
                    ]),
              ),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        preferencesModel.backgroundImage!,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            expandedHeight: 180,
            backgroundColor: Sabitler.mainColor2NoOpacity,
            pinned: true,
            primary: true,
            elevation: 4,
          ),
          SliverToBoxAdapter(
              child: ListView.builder(
            padding: const EdgeInsets.only(top: 10),
            itemCount: preferencesModel.preferencesPhotos!.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PreferencesDetail(
                          preferencesPhotos:
                              preferencesModel.preferencesPhotos![index],
                        ),
                      )),
                  child: ImageContainerSecond(
                      imageAsset: preferencesModel
                          .preferencesPhotos![index].backgroundImage,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  AutoSizeText(
                                    preferencesModel
                                        .preferencesPhotos![index].subtitle,
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: GoogleFonts.playfairDisplay(
                                        textStyle: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                        shadows: [
                                          const Shadow(
                                              color: Colors.black,
                                              blurRadius: 4)
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: AutoSizeText(
                                      preferencesModel.preferencesPhotos![index]
                                          .explanation,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.unna(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                          fontStyle: FontStyle.italic,
                                          shadows: [
                                            const Shadow(
                                                color: Colors.black,
                                                blurRadius: 4),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ])));
            },
          ))
        ],
      ),
    );
  }
}
