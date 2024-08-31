import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key, required this.text, this.fColor, this.fSize, this.fWidth, this.overflow, this.maxLines,
  });
  final String text;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWidth;
  final TextOverflow? overflow;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: fColor ?? Colors.black,
      fontSize: fSize,
      fontWeight: fWidth,
      overflow: overflow,
    ),
      maxLines: maxLines,);
  }
}
