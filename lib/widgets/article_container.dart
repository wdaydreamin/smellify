import 'package:flutter/material.dart';

class ArticleContainer extends StatelessWidget {
  const ArticleContainer({
    Key? key,
    required this.width,
    this.height = 100,
    required this.imageAsset,
    this.padding,
    this.margin,
    this.child,

  }) : super(key: key);

  final double width;
  final double height;
  final String imageAsset;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(imageAsset), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
