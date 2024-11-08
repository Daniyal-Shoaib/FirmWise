import 'package:flutter/material.dart';
class AuthProvider extends ChangeNotifier{
  bool _isToggled = false;
  bool get isToggled => _isToggled;
  void toggleSwitch() {
    _isToggled = !_isToggled;
    notifyListeners(); // Notify listeners of the state change
  }
}