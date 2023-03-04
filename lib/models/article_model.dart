class Article {
  final String id;
  final String title;
  final String subtitle;
  final String body1;
  final String body2;
  final String body3;
  final String? question1;
  final String? question2;
  final String? question3;
  final String? body4;
  final String? body5;
  final String references;
  final String link;
  final String authorImageUrl;
  final String assetimage;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body1,
    required this.body2,
    required this.body3,
    this.question1,
    this.question2,
    this.question3,
    this.body4,
    this.body5,
    required this.references,
    required this.link,
    required this.authorImageUrl,
    required this.assetimage,
  });
}
