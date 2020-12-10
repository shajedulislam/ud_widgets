import 'package:flutter/material.dart';
import '../../functions/design.dart';

class UdNetworkImage extends StatelessWidget {
  final double height;
  final double width;
  final String httpPath;
  final Map<String, String> headers;
  final double scale;
  final BoxFit boxFit;
  final Alignment imageAlignment;
  final double borderRadius;
  final Widget child;

  /// Using network images are now more easy with UdNetworkImage. Just check parameters and pass values.
  UdNetworkImage({
    this.height,
    this.width,
    this.httpPath,
    this.scale,
    this.headers,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    if (httpPath == null) {
      print("==UD==> Please provide [ httpPath ] for [ UdNetworkImage ]");
    }
    if (width == null) {
      print("==UD==> Please provide [ width ] for [ UdNetworkImage ]");
    }
    if (height == null) {
      print("==UD==> Please provide [ height ] for [ UdNetworkImage ]");
    }
    if (headers != null && scale == null) {
      print("==UD==> Please provide [ scale ] for [ UdNetworkImage ]");
    }
    if (headers == null && scale != null) {
      print("==UD==> Please provide [ headers ] for [ UdNetworkImage ]");
    }
    return httpPath != null
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
                image: headers != null && scale != null
                    ? NetworkImage(
                        httpPath,
                        headers: headers,
                        scale: scale,
                      )
                    : NetworkImage(
                        httpPath,
                      ),
              ),
            ),
            child: child ?? SizedBox.shrink(),
          )
        : SizedBox.shrink();
  }
}
