import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../functions/design.dart';

class UdSvgNetworkImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final Color? color;
  final BoxFit? boxFit;
  final Alignment? imageAlignment;
  final double? borderRadius;

  /// Using svg netowrk images are now more easy with UdSvgNetworkImage. Just check parameters and pass values.
  UdSvgNetworkImage({
    this.height,
    this.width,
    required this.imageUrl,
    this.color,
    this.boxFit,
    this.imageAlignment,
    this.borderRadius,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);

    return imageUrl != ""
        ? Container(
            height: height ?? _design * 50,
            width: width ?? _design * 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius ?? _design * 2),
              ),
            ),
            child: SvgPicture.network(
              imageUrl,
              fit: boxFit ?? BoxFit.contain,
              alignment: imageAlignment ?? Alignment.center,
              height: height ?? _design * 50,
              width: width ?? _design * 50,
              placeholderBuilder: (BuildContext context) => SizedBox.shrink(),
            ),
          )
        : SizedBox.shrink();
  }
}
