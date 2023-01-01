import 'package:flutter/widgets.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreatePinModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final TextEditingController _controller = TextEditingController();
  TextEditingController get pinController => _controller;

  bool _isFilled = false;
  bool get pinFilled => _isFilled;

  bool _isShow = false;
  bool get isShow => _isShow;

  String _pinValue = '';
  String get pinValue => _pinValue;

  void onCompleted(int length) {
    if (length > 5) {
      _isFilled = true;
      notifyListeners();
    } else {
      _isFilled = false;
      notifyListeners();
    }
  }

  void onClick(String vallue) {
    if (_pinValue.length <= 5) {
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

  void goToWallet() {
    _navigationService.clearStackAndShow(Routes.createWalletSetupView);
  }
}
