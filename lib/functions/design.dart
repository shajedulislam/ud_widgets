import 'package:flutter/material.dart';

double doNotUseThisDesignValue({@required BuildContext context}) {
  return (MediaQuery.of(context).size.width / 100) * 0.267;
}

double doNotUseThisHorizontalValue({@required BuildContext context}) {
  return (MediaQuery.of(context).size.width / 100);
}
