import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:e_commerce_mobile/appfolder/app.router.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/services/authentication_service.dart';
import 'package:e_commerce_mobile/ui/base/vo/authentication_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/src/firebase_authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'login_view.form.dart';
class LoginModel extends  AuthenticationViewModel {
  final _navigationService = locator<NavigationService>();
  final auth = locator<AuthenticationService>();
  final dialog = locator<DialogService>();
  final _firebaseAuth = locator<FirebaseAuthenticationService>();
  bool _isPassword = false;

  LoginModel():super(Routes.home, 'Sign In Failure');
  bool get isPassword => _isPassword;

  void showPassword() {
    _isPassword = !_isPassword;
    notifyListeners();
  }

  void signUp() {
    _navigationService.navigateTo(Routes.createAccount);
  }

  Future signIn({required email, required password}) async {
    setBusy(true);
    final result = await auth.loginWithEmail(email: email, password: password);
    setBusy(false);
    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(Routes.home);
      } else {
        await dialog.showDialog(
          title: EcmStrings.dialogueTitle,
          description: EcmStrings.dialogueDescription,
        );
      }
    }
  }

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
  _firebaseAuth.loginWithEmail(
    email: emailValue.toString(), 
    password: passwordValue.toString());
}
