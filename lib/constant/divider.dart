import 'package:flutter/material.dart';
import 'package:semi11/theme/colors.dart';

Widget dividers(double? margin) {
  return Container(
    height: 1,
    color: darkGrey,
    margin: margin != null
        ? EdgeInsets.symmetric(
            vertical: margin,
          )
        : null,
  );
}
