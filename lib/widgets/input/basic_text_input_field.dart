import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdBasicTextInputField extends StatelessWidget {
  final double height;
  final double width;

  /// Pass index number if you need it on tap using [ getIndex ] function
  ///
  /// The pupose of index number is to help you when there are for example multi-user based text input fields and you need to know which one tapped. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// UdBasicTextInputField(
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///  )
  /// ```
  final int index;
  final String hintText;
  final Color hintTextColor;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlignment;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final bool disableShadow;
  final Color shadowColor;
  final Offset shadowOffset;
  final double shadowBlurRadius;
  final double shadowSpreadRadius;
  final double borderRadius;
  final Widget leftItem;
  final bool obsecureText;

  /// Use this parameter to listen for the changes on every key press.
  ///
  /// Example :
  /// ```dart
  /// UdBasicTextInputField(
  /// onChanged: (text) {
  ///     print(text);
  ///   },
  /// )
  /// ```
  final ValueChanged<dynamic> onChanged;
  final Function onTap;
  final Function onEditingComplete;

  /// Called when the user taps on the text input field and it returns the index value you passed in the widget.
  ///
  /// The pupose of this function is to help you when there are for example multi-user based text input fields and you need to know which one tapped. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// UdBasicTextInputField(
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///  )
  /// ```
  final ValueChanged<int> getIndex;
  final FocusNode focusNode;
  final TextEditingController controller;

  UdBasicTextInputField({
    this.height,
    this.width,
    this.index,
    this.hintText,
    this.hintTextColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlignment,
    this.obsecureText,
    // this.enableDefaultBorder,
    // this.enableFocusBorder,
    // this.borderColorDefault,
    // this.borderColorOnFocus,
    // this.borderWidthDefault,
    // this.borderWidthOnFocus,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.disableShadow,
    this.shadowColor,
    this.shadowOffset,
    this.shadowBlurRadius,
    this.shadowSpreadRadius,
    this.leftItem,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.getIndex,
    this.controller,
    this.focusNode,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return Container(
      height: height ?? _design * 40,
      width: width ?? _design * 200,
      decoration: udContainerBoxDecoration(
        context: context,
        disableShadow: disableShadow ?? backgroundColor == Colors.transparent
            ? true
            : false,
        borderRadius: borderRadius,
        borderColor: borderColor,
        borderWidth: borderWidth,
        backgroundColor: backgroundColor ?? DoNotUseThisPackageColors.white,
      ),
      padding: leftItem != null
          ? EdgeInsets.only(
              left: _design * 8,
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          leftItem ?? SizedBox.shrink(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: TextField(
                onTap: onTap ?? () {},
                onEditingComplete: () {
                  FocusScope.of(context).unfocus();
                  if (onEditingComplete != null) {
                    onEditingComplete();
                  }
                },
                onChanged: (text) {
                  onChanged(text);
                },
                controller: controller,
                focusNode: focusNode,
                obscureText: obsecureText,
                style: TextStyle(
                  fontSize: fontSize != null ? fontSize : 16,
                  fontWeight:
                      fontWeight != null ? fontWeight : FontWeight.normal,
                  color: textColor != null
                      ? textColor
                      : DoNotUseThisPackageColors.black,
                ),
                textAlign:
                    textAlignment != null ? textAlignment : TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: padding ??
                      EdgeInsets.only(
                        left: _design * 4,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: BorderSide(
                      width: 0,
                      color: Colors.transparent,
                    ),
                  ),
                  filled: false,
                  hintText: hintText ?? "Hint Text",
                  hintStyle: TextStyle(
                    color: hintTextColor ?? Colors.black38,
                    fontSize: fontSize ?? 14,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: _design * 2)
        ],
      ),
    );
  }
}
