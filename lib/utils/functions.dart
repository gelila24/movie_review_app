// get initials from Name
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/utils/enums.dart';

// A function that get the initials from the name
String getInitials(String? fullName) {
  if (fullName?.trim().isEmpty ?? true) return '';

  List<String> names = fullName!.trim().split(" ");
  String initials = "";
  int numWords = 2;

  if (names.length < numWords) {
    numWords = names.length;
  }
  for (var i = 0; i < numWords; i++) {
    initials += names[i][0].toUpperCase();
  }
  return initials;
}

// Alert display
void toast(
  String title,
  String message, {
  ToastTypes type = ToastTypes.normal,
  Color? color = AppTheme.darkBlue,
}) {
  if (type == ToastTypes.normal) {
    color = AppTheme.darkBlue;
  }
  if (type == ToastTypes.success || title == 'Success') {
    color = Colors.green;
  }
  if (type == ToastTypes.error || title == 'Error') {
    color = AppTheme.red;
  }
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: color,
  );
}
// A function that accepts a json and returns the json with out the null cases

Map<String, dynamic> removeNullValues(Map<String, dynamic> json) {
  json.removeWhere((key, value) => value == null);
  return json;
}
