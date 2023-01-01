import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TokenInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  void goToReceiveToken() {
    _navigationService.navigateTo(Routes.receiveTokenView);
  }

  void goToBuyToken() {
    _navigationService.navigateTo(Routes.buyTokenView);
  }

  void goToSwapToken() {
    _navigationService.navigateTo(Routes.swapTokenView);
  }

  void goToSendToken() {
    _navigationService.navigateTo(Routes.sendTokenView);
  }

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
