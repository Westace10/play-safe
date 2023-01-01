import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GamesInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final bool _isPaid = false;
  bool get isPaid => _isPaid;

  void goToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccountView);
  }

  void goToAccessAccount() {
    _navigationService.navigateTo(Routes.authenticationView);
  }
}
