import 'package:flutter/material.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';

class Buttons {
  static ElevatedButton elevatedButton({
    String? title,
    Color? textColor,
    Color? backgroundColor,
    EdgeInsets? padding,
    double? borderRadius,
    TextStyle? textStyle,
    Function()? onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? whiteColor,
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius ?? 12),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title.toString(),
            style: textStyle ??
                mediumText16.copyWith(
                  color: textColor ?? blackColor,
                ),
          ),
        ],
      ),
    );
  }

  static OutlinedButton outlinedButton({
    String? title,
    Color? textColor,
    Color? borderColor,
    Color? backgroundColor,
    EdgeInsets? padding,
    double? borderRadius,
    TextStyle? textStyle,
    Function()? onPressed,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.transparent,
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
        side: BorderSide(
          color: borderColor ?? whiteColor,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius ?? 12),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title.toString(),
            style: textStyle ??
                mediumText16.copyWith(
                  color: textColor ?? whiteColor,
                ),
          ),
        ],
      ),
    );
  }
}
