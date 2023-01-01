import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateWalletPhraseModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> init() async {}

  void goBack() {
    _navigationService.back();
  }

  void goToConfirmWalletPhrase() {
    _navigationService.navigateTo(Routes.confirmWalletPhraseView);
  }
}
