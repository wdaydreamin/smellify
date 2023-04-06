import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_koku_app/pages/article_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../all_providers.dart';
import '../constans/app_constans.dart';
import '../widgets/image_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Sabitler.mainColor2,
      extendBodyBehindAppBar: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.7,
              collapseMode: CollapseMode.parallax,
              titlePadding: const EdgeInsets.all(12),
              title: Text(
                'Kokuların yolculuğuna hoş geldin!',
                style: GoogleFonts.unna(
                    textStyle: Sabitler.getSliverAppbarTextStyle(),
                    shadows: [
                      const Shadow(color: Colors.black, blurRadius: 6)
                    ]),
              ),
              background: Image.asset('assets/images/kapakfotografi.jpg',
                  fit: BoxFit.fitWidth),
            ),
            expandedHeight: 200,
            backgroundColor: Sabitler.mainColor2,
            pinned: true,
            primary: true,
            elevation: 4,
          ),
          buildArticles(),
        ],
      ),
    );
  }

  Widget buildArticles() => const SliverToBoxAdapter(
        child: _Articles(),
      );
}

class _Articles extends ConsumerWidget {
  const _Articles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var articles = ref.watch(articleProvider);
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, ArticlePage.routeName,
                arguments: articles[index]);
          },
          child: ImageContainer(
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            imageAsset: articles[index].assetimage,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.14,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color(0xffbebebe).withOpacity(0.85),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AutoSizeText(
                            articles[index].title,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: GoogleFonts.unna(
                              textStyle: Sabitler.getArticleTitleTextStyle(),
                            ),
                          ),
                          Text(
                            articles[index].subtitle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.unna(
                                textStyle:
                                    Sabitler.getArticleSubtitleTextStyle()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      itemCount: articles.length,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      shrinkWrap: true,
      primary: false,
    );
  }
}
