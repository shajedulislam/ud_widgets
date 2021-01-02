import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdCard extends StatelessWidget {
  final double width;

  final double height;

  final Color backgroundColor;

  final double borderRadius;

  final BorderRadius customBorderRadius;

  final double paddingVertical;

  final double paddingHorizontal;

  /// To show border you must provide `borderColor`.
  final Color borderColor;

  /// To show border you must provide `borderColor`.
  final double borderWidth;

  /// By default this UdCard has a shadow. If you do not need shadow then you can pass `false` here to disable shadow.
  final bool disableShadow;

  final Color shadowColor;

  final Offset shadowOffset;

  final double shadowBlurRadius;

  final double shadowSpreadRadius;

  /// If you want the background color of the card to be gradient then you have to enable it by passing `true` here. After that you can pass any Gradient widget.
  final bool gradientEnable;

  /// Here you can pass your Gradient widget to show gradient color as background of UdCard.
  ///
  /// Remember ! You must pass `true` in [ gradientEnable ] to show your Gradient.
  ///
  /// Example with LinearGradient :
  /// ```dart
  /// LinearGradient(
  ///   begin: Alignment.centerLeft,
  ///   end: Alignment.centerRight,
  ///   colors: [
  ///     Colors.blue,
  ///     Colors.green,
  ///   ],
  /// )
  /// ```
  final Gradient gradient;

  final Widget child;

  /// UdCard is simplified and very easy to use when you need a card design. We provided possible parameters for you so that you can design it on your way.
  UdCard({
    this.width,
    this.height,
    this.backgroundColor,
    this.paddingHorizontal,
    this.paddingVertical,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.customBorderRadius,
    this.disableShadow,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.gradientEnable,
    this.gradient,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return Container(
        width: width ?? null,
        height: height ?? null,
        padding: EdgeInsets.symmetric(
          vertical: paddingVertical ?? _design * 16,
          horizontal: paddingHorizontal ?? _design * 16,
        ),
        decoration: udContainerBoxDecoration(
          context: context,
          backgroundColor: backgroundColor,
          gradient: gradient,
          gradientEnable: gradientEnable,
          borderColor: borderColor,
          borderRadius: borderRadius,
          customBorderRadius: customBorderRadius,
          borderWidth: borderWidth,
          disableShadow: disableShadow ?? backgroundColor == Colors.transparent
              ? true
              : false,
          shadowColor: shadowColor,
          shadowOffset: shadowOffset,
          shadowBlurRadius: shadowBlurRadius,
          shadowSpreadRadius: shadowSpreadRadius,
        ),
        child: child);
  }
}
