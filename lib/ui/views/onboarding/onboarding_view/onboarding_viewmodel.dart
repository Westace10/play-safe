import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToGetStarted() {
    _navigationService.clearStackAndShow(Routes.getStartedView);
  }
}
