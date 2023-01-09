import 'package:flutter/widgets.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/services/api_services.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreatePinModel extends BaseViewModel {
  final log = getLogger("CreatePinModel");
  final _navigationService = locator<NavigationService>();
  final _persistentStorageService = locator<PersistentStorageService>();
  final _apiService = locator<APIService>();

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

  onNextButton() async {
    setBusy(true);
    await _apiService.post(
      route: "new:main/tables/Users/data?columns=id",
      body: {
        "gameremail": _persistentStorageService.getData('gameremail'),
        "gamerid": _persistentStorageService.getData('gamerid'),
        "password": _pinValue.toString(),
      },
    ).then((value) async {
      if (value.toString().split(",")[1].split(":")[0].contains("xata")) {
        _persistentStorageService.saveUsername('password', _pinValue);
        _persistentStorageService.hasSeenOnboarding = true;
        log.v(value);
        goToWallet();
      }
    }).onError((error, stackTrace) {
      log.v(error);
      log.v(stackTrace);
    });
    setBusy(false);
  }

  void goBack() {
    _navigationService.back();
  }

  void goToWallet() {
    _navigationService.clearStackAndShow(Routes.dashboardView);
  }
}
