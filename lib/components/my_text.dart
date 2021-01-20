

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;

  const MyText(
      {Key key, @required this.text, this.size, this.weight, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.white,
          fontWeight: weight ?? FontWeight.normal,
          fontSize: size ?? 16),
    );
  }
}