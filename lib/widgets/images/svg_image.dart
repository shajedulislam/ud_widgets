import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../functions/design.dart';

class UdSvgImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imagePath;
  final Color? color;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;

  /// Using svg images are now more easy with UdSvgImage. Just check parameters and pass values.
  UdSvgImage({
    this.height,
    this.width,
    this.imagePath,
    this.color,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);

    if (imagePath == null) {
      print("==UD==> Please provide [ imagePath ] for [ UdSvgImage ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdSvgImage ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdSvgImage ]");
    }
    return imagePath != null && imagePath != ""
        ? Container(
            height: height ?? _design * 50,
            width: width ?? _design * 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius ?? _design * 2),
              ),
            ),
            child: SvgPicture.asset(
              imagePath!,
              color: color,
              fit: boxFit ?? BoxFit.contain,
              alignment: imageAlignment ?? Alignment.center,
              height: height ?? _design * 50,
              width: width ?? _design * 50,
            ),
          )
        : SizedBox.shrink();
  }
}
