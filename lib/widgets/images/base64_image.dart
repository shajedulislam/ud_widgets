import 'dart:convert';
import 'package:flutter/material.dart';
import '../../ud_widgets.dart';

class UdBase64Image extends StatelessWidget {
  final double? height;
  final double? width;

  /// To show image of base64 encoded byte then you can pass the string here.
  final String? base64bytes;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;
  final Widget? child;

  /// Using base64 encoded byte images are now more easy with UdBase64Image. Just check parameters and pass values.
  UdBase64Image({
    this.height,
    this.width,
    this.base64bytes,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    if (base64bytes == null) {
      print("==UD==> Please provide [ base64bytes ] for [ UdBase64Image ]");
    } else {}
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdBase64Image ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdBase64Image ]");
    }
    return base64bytes != null
        ? UdByteImage(
            height: height,
            width: width,
            bytes: base64Decode(base64bytes!),
            imageAlignment: imageAlignment,
            borderRadius: borderRadius,
            boxFit: boxFit,
            child: child,
          )
        : SizedBox.shrink();
  }
}
