
import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:e_commerce_mobile/appfolder/app.router.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/services/authentication_service.dart';
import 'package:e_commerce_mobile/ui/base/vo/authentication_viewmodel.dart';

import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'create_account_view.form.dart';
class CreateAccountModel extends AuthenticationViewModel {
  CreateAccountModel() :super(Routes.login, 'Sign Up Failure');
  final _navigationService = locator<NavigationService>();
  final auth = locator<AuthenticationService>();
  final dialogue = locator<DialogService>();
  final _firebaseAuth = locator<FirebaseAuthenticationService>();
  bool _isPassword = false;
  bool get isPassword => _isPassword;

  void showPassword() {
    _isPassword = !_isPassword;
    notifyListeners();
  }

  void signIn() {
    _navigationService.navigateTo(Routes.login);
  }

  Future signUp({required email, required password}) async {
    setBusy(true);
    var result = await auth.signUpWithEmail(
      email: email, 
      password: password);
      setBusy(false);
    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(Routes.login);
      } else {
        await dialogue.showDialog(
            title: EcmStrings.dialogueTitle,
            description: EcmStrings.dialogueDescription);
      }
    } else{
      await dialogue.showDialog(
        title: 'Sign up failure',
        description: 'General failure'
      );
    }
  }
  
  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
  _firebaseAuth.createAccountWithEmail(
    email: emailValue.toString(), password: passwordValue.toString());
}
