import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

/// Use UdTextButton when you want only text to work like a button. You can pass button text, its size, weight, color, padding arround text and a function to execute on tap.
class UdTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final Function function;
  final EdgeInsets padding;

  UdTextButton({
    this.text,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.padding,
    this.function,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: Padding(
        padding: padding ?? EdgeInsets.all(_design * 2),
        child: UdText(
          text: text ?? "Button",
          fontSize: fontSize ?? 14,
          color: fontColor ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
      onTap: function,
    );
  }
}
