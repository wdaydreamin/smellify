import 'package:flutter/material.dart';
import 'package:flutter_koku_app/widgets/text_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constans/app_constans.dart';
import '../models/article_model.dart';
import 'custom_tag.dart';

class AnArticle extends StatelessWidget {
  final Article article;
  const AnArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.95,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xffbebebe).withOpacity(0.85),
          borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              article.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.unna(
                  textStyle: Sabitler.getArticleInsideTitleTextStyle()),
            ),
            const SizedBox(height: 12),
            Text(
              article.subtitle,
              style: GoogleFonts.unna(
                  textStyle: Sabitler.getArticleInsideSubtitleTextStyle()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextContainer(
                text: article.question1 ?? '',
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleInsideSubtitle2TextStyle())),
            const SizedBox(
              height: 8,
            ),
            Text(
              article.body1,
              style:
                  GoogleFonts.sourceSansPro(textStyle: Sabitler.getArticleTextStyle()),
            ),
            const SizedBox(
              height: 8,
            ),
            TextContainer(
                text: article.question2 ?? '',
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleTitleTextStyle())),
            const SizedBox(
              height: 8,
            ),
            Text(article.body2,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleTextStyle())),
            const SizedBox(
              height: 8,
            ),
            TextContainer(
              text: article.question3 ?? '',
              style: GoogleFonts.sourceSansPro(
                  textStyle: Sabitler.getArticleTitleTextStyle()),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(article.body3,
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleTextStyle())),
            const SizedBox(
              height: 8,
            ),
            TextContainer(
                text: article.body4 ?? '',
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleTextStyle())),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 16,
            ),
            TextContainer(
                text: article.body5 ?? '',
                style: GoogleFonts.sourceSansPro(
                    textStyle: Sabitler.getArticleTextStyle())),
            Column(children: [
              CustomTag(
                  backgroundColor: Sabitler.articleColor.withOpacity(0.8),
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(article.authorImageUrl),
                    ),
                    const SizedBox(width: 10),
                    Text(article.references)
                  ])
            ]),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Sabitler.articleColor.withOpacity(0.8),
                    elevation: 0,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () async {
                  final Uri url = Uri.parse(article.link);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                child: const Text(
                  'Bağlantıya buradan ulaşabilirsiniz.',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
