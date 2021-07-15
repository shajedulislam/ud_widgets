import 'package:flutter/material.dart';

/// To do something on tap using any widgets, wrap your widget inside UdTapper and use onTap function.
class UdTapper extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final Function? onTap;
  final bool? skipTraversal;

  UdTapper({this.child, this.padding, this.onTap, this.skipTraversal});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusNode: FocusNode(skipTraversal: skipTraversal ?? true),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: padding ?? EdgeInsets.all(0),
        child: child,
      ),
      onTap: onTap as void Function()?,
    );
  }
}
