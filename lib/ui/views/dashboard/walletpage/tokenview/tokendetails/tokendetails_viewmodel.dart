import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TokenDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  final TooltipBehavior _toolTip = TooltipBehavior(enable: true);
  TooltipBehavior get toolTip => _toolTip;

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
