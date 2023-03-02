import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:e_commerce_mobile/appfolder/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();


  void navigateToLogin() {
    _navigationService.navigateTo(Routes.login);
  }

  void navigateToCreateAccount() {
    _navigationService.navigateTo(Routes.createAccount);
  }
}