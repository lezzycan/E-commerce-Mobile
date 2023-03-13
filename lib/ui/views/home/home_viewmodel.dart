import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:e_commerce_mobile/appfolder/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();


  void navigateBack() {
    _navigationService.back();
  }

  void navigateToPage (
    String prodName,
  String proOldPrice,
   String prodImage,
   String prodNewPrice,
  ) {
    _navigationService.navigateTo(Routes.productDetails);
    notifyListeners();
  }
}