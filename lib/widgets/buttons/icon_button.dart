import 'package:flutter/material.dart';
import '../../functions/design.dart';

/// Use UdIconButton when you want only an Icon widget to work like a button. You can pass Icon widget, padding arround it and a function to execute on tap.
class UdIconButton extends StatelessWidget {
  final Icon? child;
  final EdgeInsets? padding;
  final Function? function;
  final bool? skipTraversal;

  UdIconButton({
    this.child,
    this.padding,
    this.function,
    this.skipTraversal,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return InkWell(
      focusNode: FocusNode(skipTraversal: skipTraversal ?? true),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: Padding(
        padding: padding ?? EdgeInsets.all(_design * 0.5),
        child: child,
      ),
      onTap: function as void Function()?,
    );
  }
}
