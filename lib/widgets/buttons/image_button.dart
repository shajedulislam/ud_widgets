import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

/// Use UdImageButton when you want only an asset image to work like a button. You can pass image path, its size, padding arround image and a function to execute on tap.
class UdImageButton extends StatelessWidget {
  final String? imagePath;
  final Function? function;
  final EdgeInsets? padding;
  final double? height;
  final double? width;

  UdImageButton({
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
      print("==UD==> Please provide [ imagePath ] for [ UdImageButton ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdImageButton ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdImageButton ]");
    }
    return imagePath != null && imagePath != ""
        ? InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            child: Padding(
              padding: padding ?? EdgeInsets.all(_design * 0.5),
              child: UdAssetImage(
                imagePath: imagePath,
                boxFit: BoxFit.contain,
                imageAlignment: Alignment.center,
                height: height ?? _design * 20,
                width: width ?? _design * 20,
              ),
            ),
            onTap: function as void Function()?,
          )
        : SizedBox.shrink();
  }
}
