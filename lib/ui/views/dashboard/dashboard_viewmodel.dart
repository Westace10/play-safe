import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DashboardViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void onNavBarTap(int value) {
    _controller.jumpToPage(value);
    _currentIndex = value;
    notifyListeners();
  }

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
