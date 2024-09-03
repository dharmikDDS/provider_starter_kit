import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/services/base_api_service.dart';
import 'package:flutter_provider_starter_kit/services/demo_service.dart';

class DemoProvider extends ChangeNotifier {
  final BaseDemoService services;

  DemoProvider(this.services);

  bool _isLoading = false;
  int _count = 0;

  bool get isLoading => _isLoading;
  int get count => _count;

  setLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void increment() {
    _count += 1;
    notifyListeners();
  }

  void decrement({VoidCallback? ifLessThenZero}) {
    if (_count == 0) {
      ifLessThenZero?.call();
      return;
    }
    _count -= 1;
    notifyListeners();
  }

  Future<void> demoFunction({dynamic data}) async {
    try {
      setLoading(true);
      final response = await services.demoRequest(data: data);
      final token = response['token'];
      BaseRepository.instance.addToken(token);
      setLoading(false);
    } on DioException {
      setLoading(false);
      rethrow;
    } catch (e) {
      setLoading(false);
      debugPrint("Error while logging in $e");
    }
  }
}
