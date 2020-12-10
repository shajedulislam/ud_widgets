import 'package:flutter/material.dart';
import 'package:ud_widgets/ud_widgets.dart';

class UdText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextOverflow overflow;
  final TextAlign alignment;
  final TextDecoration decoration;

  /// You can use this widget for texts. Inside we are using Text widget but UdText helps you minimizing code.
  UdText({
    this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.alignment,
    this.decoration,
    this.overflow,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "Text",
      overflow: overflow,
      textAlign: alignment,
      style: TextStyle(
        color: color ?? DoNotUseThisPackageColors.black,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        decoration: decoration ?? null,
      ),
    );
  }
}
