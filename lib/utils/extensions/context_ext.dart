import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/utils/styles.dart';

/// for getting theme instance
extension ThemeExtensions on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
  ThemeData get theme => Theme.of(this);
}

/// to show success and error snackbar
extension SnackBarExtension on BuildContext {
  showErrorMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
          content: Text(
            message,
            style: textStyle16SemiBold.copyWith(color: Colors.white),
          ),
          backgroundColor: Colors.red[900]),
    );
  }

  showSuccessMessage(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: textStyle16SemiBold.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}

extension MediaQueryExtension on BuildContext {
  Size get mSize => MediaQuery.of(this).size;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
