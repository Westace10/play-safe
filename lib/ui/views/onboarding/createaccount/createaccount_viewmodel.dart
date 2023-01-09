import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/models/data_query_model.dart';
import 'package:play_safe/core/services/api_services.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:play_safe/core/utils/validation_manager.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:play_safe/ui/views/onboarding/createaccount/createaccount_view.form.dart';

class CreateAccountModel extends FormViewModel {
  final log = getLogger("CreateAccountModel");
  final _navigationService = locator<NavigationService>();
  final _persistentStorageService = locator<PersistentStorageService>();
  final _apiService = locator<APIService>();

  bool get disableCreateButton =>
      !isFormValid ||
      gamerEmailValue == null ||
      gamerEmailValue == "" ||
      gamerIdValue == "" ||
      gamerIdValue == null;

  bool _usernameAvailable = false;
  bool get usernameAvailable => _usernameAvailable;

  void goToCreatePin() {
    _navigationService.navigateTo(Routes.createPinView);
  }

  void goBack() {
    _navigationService.back();
  }

  onNextButton() async {
    setBusy(true);
    await _apiService.post(route: "new:main/tables/Users/query", body: {
      "columns": ["*"]
    }).then((value) async {
      final records = dataQueryModelFromMap(value);
      if (records!.records!
              .any((element) => element!.gameremail == gamerEmailValue) ||
          records.records!.any((element) => element!.gamerid == gamerIdValue)) {
        log.v("gamer id not available");
      } else {
        log.v("gamer id available");
        _persistentStorageService.saveUsername('gamerid', gamerIdValue!);
        _persistentStorageService.saveUsername('gameremail', gamerEmailValue!);
        goToCreatePin();
      }
    }).onError((error, stackTrace) {
      log.v(error);
      log.v(stackTrace);
    });
    setBusy(false);
  }

  @override
  void setFormStatus() {
    log.v(gamerEmailValue);
    setGamerEmailValidationMessage(
        emailAddressValidator(value: gamerEmailValue ?? ""));
    setGamerIdValidationMessage(toolNameValidator(value: gamerIdValue ?? ""));
  }
}
