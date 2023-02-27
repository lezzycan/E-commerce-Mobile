import 'package:e_commerce_mobile/ui/views/create_account/create_account_view.dart';
import 'package:e_commerce_mobile/ui/views/home/home_view.dart';
import 'package:e_commerce_mobile/ui/views/login/login_view.dart';
import 'package:e_commerce_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
 routes:[
      AdaptiveRoute(page: Startup, initial: true),
      AdaptiveRoute(page: Home),
      AdaptiveRoute(page: Login),
      AdaptiveRoute(page: CreateAccount)
 ],
 dependencies: [
  LazySingleton(classType: NavigationService),
 ]
)
class AppSetup{
  
}