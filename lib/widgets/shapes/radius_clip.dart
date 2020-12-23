import 'package:flutter/material.dart';
import 'package:ud_widgets/functions/design.dart';

class UdRadiusClip extends StatelessWidget {
  final double radius;
  final Widget child;

  UdRadiusClip({this.radius, this.child});
  @override
  Widget build(BuildContext context) {
    double _design = doNotUseThisDesignValue(context: context);
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(
          radius ?? _design * 4,
        ),
      ),
      child: child ?? SizedBox.shrink(),
    );
  }
}
