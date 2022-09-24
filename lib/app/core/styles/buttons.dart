import 'package:flutter/material.dart';
import 'colors.dart';

class AppButtonStyle {
  static ButtonStyle generalButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColor.kPrimary),
    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
