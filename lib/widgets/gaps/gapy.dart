import 'package:flutter/material.dart';

class UdGapY extends StatelessWidget {
  final double? value;

  ///Use this widget if you need to provide vertical gap or space anywhere
  UdGapY({this.value});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value ?? 0,
    );
  }
}
