import 'package:play_safe/app/app.locator.dart';
import 'package:play_safe/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateAccountModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  // TextEditingController _controller = TextEditingController();
  // TextEditingController get controller => _controller;

  void goToCreatePin() {
    _navigationService.navigateTo(Routes.createPinView);
  }

  void goBack() {
    _navigationService.back();
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
