import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../functions/design.dart';

class UdStraightLine extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;

  UdStraightLine({this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    double _designHorizon = doNotUseThisHorizontalValue(context: context);
    return Container(
      width: width ?? double.infinity,
      height: height ?? _designHorizon * 0.1,
      color: color ?? DoNotUseThisPackageColors.black.withOpacity(0.5),
    );
  }
}
