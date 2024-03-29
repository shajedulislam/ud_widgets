import 'package:flutter/material.dart';
import 'dart:io';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final double? height;
  final Color? backgroundColor;

  /// If you do not need any custom widget and just need a title then you can use this parameter.
  final String? titleText;
  final Color? titleColor;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final Alignment? titleAlignment;
  final double? titleWidth;
  final double? titlePaddingLeft;
  final double? titlePaddingRight;

  /// If you want any customization or widget in the left side then use this parameter.
  final Widget? customLeft;

  /// If you want any customization or widget in the middle then use this parameter.
  final Widget? customMiddle;

  /// If you want any customization or widget in the right side then use this parameter.
  final Widget? customRight;

  final double? appBarPaddingLeft;
  final double? appBarPaddingright;

  /// By default this AppBar has a shadow. If you do not need shadow then you can pass `false` here to disable shadow.
  final bool? disableShadow;

  final Color? shadowColor;
  final Offset? shadowOffset;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;

  /// If you want the background color of the appbar to be gradient then you have to enable it by passing `true` here. After that you can pass any Gradient widget.
  final bool? gradientEnable;

  /// Here you can pass your Gradient widget to show gradient color as background of AppBar.
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
  final LinearGradient? gradient;

  /// If you want full customization over this appbar widget then use this paramenter.
  final Widget? customDesign;

  @override
  final Size preferredSize;

  /// UdAppBar is a simplified and responsive appbar and very easy to use. We provided possible options for you so that you can customize it easily.
  ///
  /// Remember! if you dont want to provide custom height then you must pass the `context`.
  UdAppBar({
    required this.context,
    this.height,
    this.backgroundColor,
    this.titleText,
    this.titleColor,
    this.titleFontSize,
    this.titleFontWeight,
    this.titleAlignment,
    this.titleWidth,
    this.titlePaddingLeft,
    this.titlePaddingRight,
    this.customDesign,
    this.customLeft,
    this.customMiddle,
    this.customRight,
    this.appBarPaddingLeft,
    this.appBarPaddingright,
    this.disableShadow,
    this.shadowBlurRadius,
    this.shadowColor,
    this.shadowOffset,
    this.shadowSpreadRadius,
    this.gradientEnable,
    this.gradient,
  }) : preferredSize = Size.fromHeight(
          height != null
              ? Platform.isIOS
                  ? height
                  : MediaQuery.of(context).padding.top +
                      height -
                      doNotUseThisDesignValue(context: context) * 20
              : Platform.isIOS
                  ? doNotUseThisDesignValue(context: context) * 106
                  : MediaQuery.of(context).padding.top +
                      doNotUseThisDesignValue(context: context) * 55,
        );
  @override
  Widget build(BuildContext contextInside) {
    double _design = doNotUseThisDesignValue(context: contextInside);
    return Container(
      height: height != null
          ? Platform.isIOS
              ? height
              : MediaQuery.of(context).padding.top + height! - _design * 20
          : Platform.isIOS
              ? _design * 106
              : MediaQuery.of(context).padding.top + _design * 55,
      width: double.infinity,
      decoration: udContainerBoxDecoration(
        context: contextInside,
        disableShadow: disableShadow,
        shadowColor:
            shadowColor ?? DoNotUseThisPackageColors.black.withOpacity(0.1),
        shadowBlurRadius: shadowBlurRadius,
        shadowOffset: shadowOffset,
        borderRadius: 0,
        shadowSpreadRadius: shadowSpreadRadius,
        backgroundColor: backgroundColor ?? DoNotUseThisPackageColors.theme,
        gradient: gradient,
        gradientEnable: gradientEnable,
      ),
      child: customDesign ??
          Container(
            padding: EdgeInsets.only(
              left: appBarPaddingLeft ?? _design * 16,
              right: appBarPaddingright ?? _design * 16,
            ),
            child: SafeArea(
              top: true,
              bottom: false,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: customLeft ?? SizedBox.shrink(),
                  ),
                  customMiddle != null
                      ? Container(
                          alignment: Alignment.center,
                          child: customMiddle,
                        )
                      : titleText != null
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  titleAlignment == Alignment.centerLeft
                                      ? MainAxisAlignment.start
                                      : titleAlignment == Alignment.centerRight
                                          ? MainAxisAlignment.end
                                          : MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: titleAlignment == Alignment.centerLeft
                                      ? titlePaddingLeft ?? _design * 40
                                      : 0,
                                ),
                                Container(
                                  width: titleWidth ??
                                      doNotUseThisHorizontalValue(
                                            context: contextInside,
                                          ) *
                                          60,
                                  alignment: titleAlignment ?? Alignment.center,
                                  child: UdText(
                                    text: titleText,
                                    fontSize: titleFontSize ?? 16,
                                    color: titleColor ??
                                        DoNotUseThisPackageColors.white,
                                    alignment: TextAlign.center,
                                    fontWeight:
                                        titleFontWeight ?? FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: titleAlignment == Alignment.centerRight
                                      ? titlePaddingRight ?? _design * 55
                                      : 0,
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: customRight ?? SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
