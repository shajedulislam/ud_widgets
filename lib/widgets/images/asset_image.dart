import 'package:flutter/material.dart';
import '../../functions/design.dart';

class UdAssetImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String? imagePath;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;
  final Widget? child;

  /// Using network images are now more easy with UdNetworkImage. Just check parameters and pass values.
  UdAssetImage({
    this.height,
    this.width,
    this.imagePath,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);

    if (imagePath == null) {
      print("==UD==> Please provide [ imagePath ] for [ UdAssetImage ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdAssetImage ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdAssetImage ]");
    }
    return imagePath != null && imagePath != ""
        ? Container(
            height: height ?? _design * 50,
            width: width ?? _design * 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius ?? _design * 2),
              ),
              image: DecorationImage(
                alignment: imageAlignment ?? Alignment.center,
                fit: boxFit ?? BoxFit.contain,
                image: AssetImage(imagePath!),
              ),
            ),
            child: child ?? SizedBox.shrink(),
          )
        : SizedBox.shrink();
  }
}
