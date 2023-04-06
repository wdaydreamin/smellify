import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({Key? key, required this.text, required this.style})
      : super(key: key);
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    if (text != '') {
      return Container(
        alignment: Alignment.centerLeft,

        child: Text(
          text,
          style: style,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
