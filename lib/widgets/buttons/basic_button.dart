import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdBasicButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final String? title;
  final double? titleFontSize;
  final Color? titleColor;
  final FontWeight? titleFontWeight;
  final double? paddingArroundTitle;
  final double? borderRadius;
  final double? borderWidth;
  final BorderRadius? customBorderRadius;
  final Color? borderColor;
  final Color? splashColor;
  final bool? disableShadow;
  final Color? shadowColor;
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final bool? skipTraversal;
  final Function? onTap;
  final Widget? customChild;

  /// UdBasicButton is a basic button made with possible options that a developer will need. Modify the button in your way passing values.
  UdBasicButton({
    this.width,
    this.height,
    this.backgroundColor,
    this.title,
    this.titleFontSize,
    this.titleColor,
    this.titleFontWeight,
    this.paddingArroundTitle,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.customBorderRadius,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.splashColor,
    this.disableShadow,
    this.skipTraversal,
    this.customChild,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return Container(
      height: height ?? _design * 45,
      width: width ?? _design * 100,
      decoration: udContainerBoxDecoration(
        context: context,
        borderRadius: borderRadius,
        customBorderRadius: customBorderRadius,
        shadowBlurRadius: shadowBlurRadius,
        disableShadow: disableShadow ?? backgroundColor == Colors.transparent
            ? true
            : false,
        shadowOffset: shadowOffset,
        shadowColor: shadowColor,
        shadowSpreadRadius: shadowSpreadRadius,
        backgroundColor: backgroundColor ?? DoNotUseThisPackageColors.theme,
      ),
      child: ElevatedButton(
        focusNode: FocusNode(skipTraversal: skipTraversal ?? true),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(50, 20),
          padding: EdgeInsets.all(paddingArroundTitle ?? 0),
          backgroundColor: backgroundColor ?? DoNotUseThisPackageColors.theme,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0,
            ),
            borderRadius: customBorderRadius ??
                BorderRadius.circular(
                  borderRadius ?? _design * 2,
                ),
          ),
          shadowColor: Colors.transparent,
        ),
        child: customChild ??
            UdText(
              text: title ?? 'Button',
              color: titleColor ?? Colors.white,
              fontSize: titleFontSize ?? 14,
              fontWeight: titleFontWeight ?? FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
        onPressed: onTap as void Function()? ?? () {},
      ),
    );
  }
}
