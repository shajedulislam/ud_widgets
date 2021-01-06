import 'package:flutter/material.dart';
import '../../functions/design.dart';
import '../../ud_widgets.dart';

class UdAlertWidget extends StatelessWidget {
  final String title;
  final double titleFontSize;
  final String message;
  final double messageFontSize;
  final String button1Text;
  final double button1FontSize;
  final Function button1Function;
  final String button2Text;
  final double button2FontSize;
  final Function button2Function;
  final double alertBorderRadius;
  final bool closeAlertOnTapArround;
  final Color colorAroundTheAlert;

  /// To show some information in an alert you can use this widget. It should be used where the return type is [ Widget ]
  UdAlertWidget({
    this.title,
    this.titleFontSize,
    this.message,
    this.messageFontSize,
    this.button1Text,
    this.button1FontSize,
    this.button1Function,
    this.button2Text,
    this.button2FontSize,
    this.button2Function,
    this.alertBorderRadius,
    this.colorAroundTheAlert,
    this.closeAlertOnTapArround,
  });
  @override
  Widget build(BuildContext context) {
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
                        color: DoNotUseThisPackageColors.black.withOpacity(0.7),
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
                            padding:
                                EdgeInsets.symmetric(horizontal: _design * 10),
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
  }
}
