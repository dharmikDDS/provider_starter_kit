import 'dart:async';
import 'package:flutter/material.dart';

class Debouncer {
  Timer? _timer;

  final int milliseconds;

  Debouncer(this.milliseconds);

  void run(VoidCallback action) {
    if (_timer != null || _timer?.isActive == true) _timer?.cancel();
    _timer = Timer(Duration(microseconds: milliseconds), action);
  }
}
