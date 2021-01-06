import 'package:flutter/material.dart';

class UdGapX extends StatelessWidget {
  final double value;

  ///Use this widget if you need to provide horizontal gap or space anywhere
  UdGapX({this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value ?? 0,
    );
  }
}
