import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdBasicButton extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String title;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  final double paddingArroundTitle;
  final double borderRadius;
  final BorderRadius customBorderRadius;
  final Color borderColor;
  final Color splashColor;
  final bool disableShadow;
  final Color shadowColor;
  final Offset shadowOffset;
  final double shadowBlurRadius;
  final double shadowSpreadRadius;
  final Function onTap;
  final Widget customChild;

  /// UdBasicButton is a basic button made with possible options that a developer will need. Modify the button in your way passing values.
  UdBasicButton({
    this.width,
    this.height,
    this.backgroundColor,
    this.title,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.paddingArroundTitle,
    this.borderColor,
    this.borderRadius,
    this.customBorderRadius,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.splashColor,
    this.disableShadow,
    this.customChild,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return Container(
      height: height ?? _design * 45,
      width: width ?? _design * 100,
      decoration: disableShadow != true
          ? udContainerBoxDecoration(
              context: context,
              borderRadius: borderRadius,
              customBorderRadius: customBorderRadius,
              shadowBlurRadius: shadowBlurRadius,
              disableShadow:
                  disableShadow ?? backgroundColor == Colors.transparent
                      ? true
                      : false,
              shadowOffset: shadowOffset,
              shadowColor: shadowColor,
              shadowSpreadRadius: shadowSpreadRadius,
              backgroundColor:
                  backgroundColor ?? DoNotUseThisPackageColors.theme,
            )
          : null,
      child: RaisedButton(
        padding: EdgeInsets.all(
          paddingArroundTitle ?? 0,
        ),
        color: backgroundColor ?? DoNotUseThisPackageColors.theme,
        highlightColor: Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        splashColor: splashColor ?? Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.transparent),
          borderRadius: customBorderRadius ??
              BorderRadius.circular(
                borderRadius ?? _design * 2,
              ),
        ),
        child: customChild ??
            UdText(
              text: title ?? 'Button',
              color: fontColor ?? Colors.white,
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
        onPressed: onTap ?? () {},
      ),
    );
  }
}
