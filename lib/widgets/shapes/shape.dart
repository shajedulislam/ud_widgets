import 'package:flutter/material.dart';
import 'package:ud_widgets/functions/design.dart';
import '../../constants/colors.dart';

class UdShape extends StatelessWidget {
  final double size;
  final double radius;
  final Color color;
  final Alignment childAlignment;
  final Widget child;

  /// If you need widget like circle shape or square shape then you can use this widget. It can contain a child also.
  UdShape({
    this.size,
    this.color,
    this.radius,
    this.childAlignment,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return Container(
      height: size ?? _design * 40,
      width: size ?? _design * 40,
      alignment: childAlignment ?? Alignment.center,
      decoration: BoxDecoration(
        color: color ?? DoNotUseThisPackageColors.theme,
        borderRadius: BorderRadius.all(
          Radius.circular(
            radius ?? size ?? _design * 20,
          ),
        ),
      ),
      child: child ?? SizedBox.shrink(),
    );
  }
}
