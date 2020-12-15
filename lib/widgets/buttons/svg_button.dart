import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../functions/design.dart';

/// Use UdSvgButton when you want only an svg image/icon to work like a button. You can pass svg path, its size, padding arround svg and a function to execute on tap.
class UdSvgButton extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final EdgeInsets padding;
  final Function function;

  UdSvgButton({
    this.imagePath,
    this.height,
    this.width,
    this.padding,
    this.function,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);

    if (imagePath == null) {
      print("==UD==> Please provide [ imagePath ] for [ UdSvgButton ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdSvgButton ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdSvgButton ]");
    }
    return imagePath != null && imagePath != ""
        ? InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: Padding(
              padding: padding ?? EdgeInsets.all(_design * 0.5),
              child: SvgPicture.asset(
                imagePath,
                fit: BoxFit.contain,
                alignment: Alignment.center,
                height: height ?? _design * 20,
                width: width ?? _design * 20,
              ),
            ),
            onTap: function,
          )
        : SizedBox.shrink();
  }
}
