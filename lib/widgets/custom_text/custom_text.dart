import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.titel,
    required this.color,
    required this.size,
    this.weight,
    this.align,
    this.overflow, this.height, this.maxLines,
  }) : super(key: key);

  final String? titel;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final double? height;
  final int? maxLines;

  final TextAlign? align;

  final TextOverflow? overflow;

  //  overflow: TextOverflow.ellipsis,

  @override
  Widget build(BuildContext context) {
    return Text(
      '$titel',
      overflow: overflow,
      textAlign: align,
      maxLines: maxLines,
      style: TextStyle(
          height: height == null ? 1 : height,
          fontFamily: 'Satoshi',
          color: color,
          fontSize: size,
          fontWeight: weight),
    );
  }
}
