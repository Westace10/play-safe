import 'package:flutter/material.dart';
import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/models/post_query_model.dart';
import 'package:play_safe/core/services/api_services.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DappsViewModel extends BaseViewModel {
  final log = getLogger("CreateAccountModel");
  final _navigationService = locator<NavigationService>();
  final _persistentStorageService = locator<PersistentStorageService>();
  final _apiService = locator<APIService>();

  final PageController _controller = PageController();
  PageController get pageController => _controller;

  List<Record?>? _postData = [];
  List<Record?>? get postData => _postData;

  void onCardTap(Record? record) async {
    // _navigationService.navigateToView(
    //   ViewpostView(
    //     postData: record,
    //   ),
    // );
  }

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }

  Future<void> init() async {
    setBusy(true);
    await _apiService.post(route: "coin_app:main/tables/Posts/query", body: {
      "columns": ["*"]
    }).then((value) async {
      final records = postsQueryModelFromMap(value);
      _postData = records?.records;
      notifyListeners();
      log.v(_postData);
    }).onError((error, stackTrace) {
      log.v(error);
      log.v(stackTrace);
    });
    setBusy(false);
  }
}
