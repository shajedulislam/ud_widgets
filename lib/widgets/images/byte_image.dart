import 'dart:typed_data';
import 'package:flutter/material.dart';
import '../../functions/design.dart';

class UdByteImage extends StatelessWidget {
  final double? height;
  final double? width;
  final Uint8List? bytes;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;
  final Widget? child;

  /// Using byte images are now more easy with UdByteImage. Just check parameters and pass values.
  UdByteImage({
    this.height,
    this.width,
    this.bytes,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    if (bytes == null) {
      print("==UD==> Please provide [ bytes ] for [ UdByteImage ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdByteImage ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdByteImage ]");
    }
    return bytes != null
        ? Container(
            height: height ?? _design * 50,
            width: width ?? _design * 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius ?? _design * 2),
              ),
              image: DecorationImage(
                fit: boxFit ?? BoxFit.contain,
                alignment: imageAlignment ?? Alignment.center,
                image: MemoryImage(bytes!),
              ),
            ),
            child: child ?? SizedBox.shrink(),
          )
        : SizedBox.shrink();
  }
}
