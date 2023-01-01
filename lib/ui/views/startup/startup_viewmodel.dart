import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> init() async {
    await Future.delayed(veryLongDuration, () {
      _navigationService.replaceWith(Routes.onBoardingView);
      // if (_persistentStorageService.hasSeenOnboarding) {
      //   _navigationService.replaceWith(Routes.serverListView);
      // } else {
      //   _navigationService.replaceWith(Routes.onboardingView);
      // }
    });
  }
}
