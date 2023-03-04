import 'package:flutter/material.dart';

class ImageContainerSecond extends StatelessWidget {
  const ImageContainerSecond(
      {Key? key,
      this.width,
      this.height = 100,
      required this.imageAsset,
      this.padding,
      this.margin,
      this.borderRadius = 15,
      this.child,})
      : super(key: key);

  final double? width;
  final double height;
  final String? imageAsset;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    if (imageAsset != '') {
      return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imageAsset ?? ''), fit: BoxFit.cover)),
          child: child);
    } else {
      return const SizedBox();
    }
  }
}
