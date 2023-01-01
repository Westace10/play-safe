import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class WalletSuccessModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToDashboard() {
    _navigationService.clearStackAndShow(Routes.dashboardView);
  }
}
