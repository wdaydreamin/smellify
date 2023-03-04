import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.width,
    this.height = 100,
    required this.imageAsset,
    this.padding,
    this.margin,
    this.borderRadius = 10,
    this.child,

  }) : super(key: key);

  final double width;
  final double height;
  final String imageAsset;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image:
            DecorationImage(image: AssetImage(imageAsset), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
