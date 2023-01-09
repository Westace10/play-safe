import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final log = getLogger("SettingsViewModel");
  final _navigationService = locator<NavigationService>();
  final _persistentStorageService = locator<PersistentStorageService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  String _username = '';
  String get username => _username;

  String _userid = '';
  String get userid => _userid;

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void logout() async {
    _navigationService.pushNamedAndRemoveUntil(Routes.authenticationView);
  }

  Future<void> init() async {
    setBusy(true);
    _userid = _persistentStorageService.getData("gamerid");
    // _username = _persistentStorageService.getData("firstname") +
    //     _persistentStorageService.getData("lastname");
    setBusy(false);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }

  void goBack() {
    _navigationService.back();
  }
}
