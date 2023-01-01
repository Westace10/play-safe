import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BuyTokenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final TextEditingController _controller = TextEditingController();
  TextEditingController get textController => _controller;

  bool _isShow = false;
  bool get isShow => _isShow;

  String _pinValue = '';
  String get pinValue => _pinValue;

  void onClick(String vallue) {
    if (_pinValue.length <= 11) {
      _pinValue += vallue;
      _controller.text = _pinValue;
      notifyListeners();
    }
  }

  void onBackspace() {
    if (_pinValue.isNotEmpty) {
      _pinValue = _pinValue.substring(0, _pinValue.length - 1);
      _controller.text = _pinValue;
      notifyListeners();
    }
  }

  void onShow() {
    _isShow = !_isShow;
    notifyListeners();
  }

  void goBack() {
    _navigationService.back();
  }

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
