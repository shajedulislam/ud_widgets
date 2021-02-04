import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdRadioButton extends StatelessWidget {
  final double size;

  /// It makes space inside when button is checked
  final double innerMargin;
  final double borderRadius;
  final String title;
  final double titleFontSize;
  final Color titleColor;
  final FontWeight titleWeight;
  final MainAxisAlignment mainAxisAlignment;

  /// Pass a value to get it on tap and match for checking the radio button.
  final dynamic value;

  /// To check on the radio button pass true or false here.
  final bool checked;

  /// Pass index number if you need it on tap using [ getIndex ] function
  ///
  /// The pupose of index number is to help you when there are for example multi-user based radio buttons and you need to know which one clicked. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// WidgetRadioButton(
  ///   title: "Male",
  ///   value: "male",
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///   onTap: (value) {
  ///     print(value);
  ///   },
  ///  )
  /// ```
  final int index;

  /// Called when the user taps on the radio button and it returns the index value you passed in the widget.
  ///
  /// The pupose of this function is to help you when there are for example multi-user based radio buttons and you need to know which one clicked. So, for this kind of index based situation you can use it if needed.
  ///
  /// Code Example :
  /// ```dart
  /// WidgetRadioButton(
  ///   title: "Male",
  ///   value: "male",
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///   onTap: (value) {
  ///     print(value);
  ///   },
  ///  )
  /// ```
  final ValueChanged<int> getIndex;

  /// Called when the user taps on the radio button and it returns the value you passed in the widget.
  ///
  /// Code Example :
  /// ```dart
  /// WidgetRadioButton(
  ///   title: "Male",
  ///   value: "male",
  ///   index: 1,
  ///   getIndex: (index) {
  ///     print(index);
  ///   },
  ///   onTap: (value) {
  ///     print(value);
  ///   },
  ///  )
  /// ```
  final ValueChanged<dynamic> onTap;

  /// You can modify this radio button passing values by your choice.
  UdRadioButton({
    this.size,
    this.innerMargin,
    this.borderRadius,
    this.title,
    this.titleFontSize,
    this.titleColor,
    this.titleWeight,
    this.mainAxisAlignment,
    this.checked,
    this.value,
    this.index,
    this.onTap,
    this.getIndex,
  });

  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: () {
        if (getIndex != null) {
          getIndex(index);
        }
        if (onTap != null) {
          onTap(value);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: _design * 2),
        child: Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size ?? _design * 16,
              width: size ?? _design * 16,
              decoration: BoxDecoration(
                border: Border.all(
                  color: DoNotUseThisPackageColors.theme,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    borderRadius != null
                        ? borderRadius
                        : size != null
                            ? size / 2
                            : _design * 8,
                  ),
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(innerMargin ?? _design * 2),
                decoration: BoxDecoration(
                  color: checked == true
                      ? DoNotUseThisPackageColors.theme
                      : Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      borderRadius != null
                          ? borderRadius
                          : size != null
                              ? size / 2
                              : _design * 8,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 6),
            UdText(
              text: title ?? "Radio Button",
              fontSize: titleFontSize ?? 14,
              fontWeight: titleWeight ?? FontWeight.w500,
              color: titleColor ?? Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
