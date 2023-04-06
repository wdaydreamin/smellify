import 'package:flutter/material.dart';
import 'package:flutter_koku_app/models/article_model.dart';
import 'package:flutter_koku_app/widgets/an_article.dart';
import 'package:flutter_koku_app/widgets/article_container.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  static const routeName = '/article';

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ArticleContainer(
      width: double.infinity,
      imageAsset: article.assetimage,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xffDBBEFF),
            opacity: 1,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [_AnArticle(article: article)]))
        ]),
      ),
    );
  }
}

class _AnArticle extends StatelessWidget {
  const _AnArticle({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return AnArticle(
      article: article,
    );
  }
}
