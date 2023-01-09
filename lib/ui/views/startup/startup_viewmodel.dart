import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.logger.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:play_safe/core/contants/constants.dart';
import 'package:play_safe/core/services/local_storage/persistence_storage_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final log = getLogger("CreatePinModel");
  final _navigationService = locator<NavigationService>();
  final _persistentStorageService = locator<PersistentStorageService>();

  Future<void> init() async {
    await Future.delayed(veryLongDuration, () {
      if (_persistentStorageService.hasSeenOnboarding) {
        _navigationService.replaceWith(Routes.authenticationView);
      } else {
        _navigationService.replaceWith(Routes.onBoardingView);
      }
    });
  }
}
