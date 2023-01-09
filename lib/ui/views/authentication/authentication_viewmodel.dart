import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/models/data_query_model.dart';
import 'package:play_safe/core/services/api_services.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:play_safe/core/utils/validation_manager.dart';
import 'package:play_safe/ui/views/authentication/authentication_view.form.dart';
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_view.form.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthenticationViewModel extends FormViewModel {
  final log = getLogger("AuthenticationViewModel");
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

  onLogin() async {
    setBusy(true);
    await _apiService.post(route: "new:main/tables/Users/query", body: {
      "columns": ["*"]
    }).then((value) async {
      final records = dataQueryModelFromMap(value);
      log.v(newGamerEmailValue);
      log.v(_pinValue);
      if (records!.records!
              .any((element) => element!.gameremail == newGamerEmailValue) &&
          records.records!.any((element) => element!.password == _pinValue)) {
        var accountemail = records.records!
            .firstWhere((element) => element!.gameremail == newGamerEmailValue)!
            .gameremail;
        var accountid = records.records!
            .firstWhere((element) => element!.gameremail == newGamerEmailValue)!
            .gamerid;

        _persistentStorageService.saveUsername('gamerid', accountid!);
        _persistentStorageService.saveUsername('gameremail', accountemail!);

        _navigationService.clearStackAndShow(Routes.dashboardView);
        log.v("can login");
      } else {
        log.v("cannot login");
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

  @override
  void setFormStatus() {
    log.v(newGamerEmailValue);
    setGamerEmailValidationMessage(
        emailAddressValidator(value: newGamerEmailValue ?? ""));
  }
}
