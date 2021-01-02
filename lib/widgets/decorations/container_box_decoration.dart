import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

/// Box decoration for container is now more easy with udContainerBoxDecoration. Just check parameters and pass values.
BoxDecoration udContainerBoxDecoration({
  @required BuildContext context,
  Color backgroundColor,
  double borderRadius,
  BorderRadius customBorderRadius,
  Color borderColor,
  double borderWidth,
  bool disableShadow,
  Color shadowColor,
  Offset shadowOffset,
  double shadowBlurRadius,
  double shadowSpreadRadius,
  bool gradientEnable,
  Gradient gradient,
}) {
  double _design = doNotUseThisDesignValue(context: context);
  return BoxDecoration(
    color: gradientEnable != true ? backgroundColor ?? Colors.white : null,
    gradient: gradientEnable == true
        ? gradient != null
            ? gradient
            : LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  DoNotUseThisPackageColors.theme,
                  DoNotUseThisPackageColors.green,
                ],
              )
        : null,
    border: borderColor != null
        ? Border.all(
            color: borderColor ?? Colors.black,
            width: borderWidth != null ? borderWidth : 1,
          )
        : null,
    borderRadius: customBorderRadius ??
        BorderRadius.all(
          Radius.circular(borderRadius ?? _design * 2),
        ),
    boxShadow: disableShadow != true
        ? [
            BoxShadow(
              color: shadowColor ?? Colors.black.withOpacity(0.06),
              offset: shadowOffset ?? Offset(0, 1),
              blurRadius: shadowBlurRadius ?? 3,
              spreadRadius: shadowSpreadRadius ?? 0,
            ),
          ]
        : [],
  );
}
