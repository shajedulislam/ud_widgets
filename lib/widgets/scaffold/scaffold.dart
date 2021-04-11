import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UdScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Color? backgroundColor;

  /// To change the status bar / tool bar color in android mobiles, use this parameter.
  final Color? statusBarColorAndroid;

  /// You can change status bar / tool bar text and icon color using this parameter.
  final Brightness? statusBarItemsColor;
  final bool? resizeToAvoidBottomInset;

  /// UdScaffold uses flutter Scaffold but we added more option for you.
  UdScaffold({
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.drawer,
    this.backgroundColor,
    this.statusBarColorAndroid,
    this.statusBarItemsColor,
    this.resizeToAvoidBottomInset,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: statusBarColorAndroid ?? Colors.black.withOpacity(0.2),
        statusBarBrightness: statusBarItemsColor != null
            ? statusBarItemsColor == Brightness.light
                ? Brightness.dark
                : Brightness.light
            : Brightness.dark,
        statusBarIconBrightness: statusBarItemsColor ?? Brightness.light,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? true,
        backgroundColor: backgroundColor ?? Colors.white,
        appBar: appBar ?? null,
        body: body ?? null,
        drawer: drawer ?? null,
        bottomNavigationBar: bottomNavigationBar ?? null,
      ),
    );
  }
}
