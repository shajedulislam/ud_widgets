import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

/// To show some information in an alert you can use this function. It can not be used for Widget type return. For that you can use [ UdAlertWidget ]
Future<void> udAlertFunction({
  @required BuildContext context,
  String title,
  String titleFontSize,
  String message,
  String messageFontSize,
  String button1Text,
  double button1FontSize,
  Function button1Function,
  String button2Text,
  double button2FontSize,
  Function button2Function,
  double alertBorderRadius,
  bool closeAlertOnTapArround,
  Color colorAroundTheAlert,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: closeAlertOnTapArround ?? true,
    barrierColor: colorAroundTheAlert,
    builder: (BuildContext context2) {
      double _design = doNotUseThisDesignValue(context: context);
      double _designHorizon = doNotUseThisHorizontalValue(context: context);
      return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(alertBorderRadius ?? _design * 4),
          ),
        ),
        title: UdText(
          text: title ?? "Title",
          alignment: TextAlign.center,
          color: DoNotUseThisPackageColors.black.withOpacity(0.7),
          fontSize: titleFontSize ?? 18,
          fontWeight: FontWeight.w600,
        ),
        content: Container(
          width: _designHorizon * 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(alertBorderRadius ?? _design * 4),
            bottomRight: Radius.circular(alertBorderRadius ?? _design * 4),
          )),
          child: ListView(
            padding: EdgeInsets.all(0),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(_design * 16),
                child: UdText(
                  text: message ?? "Write your dialog messgae!",
                  color: DoNotUseThisPackageColors.black.withOpacity(0.7),
                  fontSize: messageFontSize ?? 16,
                  alignment: TextAlign.center,
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: _design * 16,
                  vertical: _design * 4,
                ),
                child: Row(
                  mainAxisAlignment: button2Text != null
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: _design * 10),
                        height: _design * 30,
                        alignment: Alignment.center,
                        child: UdText(
                          text: button1Text ?? "button 1",
                          color:
                              DoNotUseThisPackageColors.black.withOpacity(0.7),
                          fontSize: button1FontSize ?? 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: button1Function,
                    ),
                    button2Text != null
                        ? InkWell(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: _design * 10),
                              height: _design * 30,
                              alignment: Alignment.center,
                              child: UdText(
                                text: button2Text ?? "button 2",
                                color: DoNotUseThisPackageColors.black
                                    .withOpacity(0.7),
                                fontSize: button2FontSize ?? 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: button2Function,
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
