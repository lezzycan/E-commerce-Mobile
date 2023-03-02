// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:e_commerce_mobile/appfolder/app.locator.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

 abstract class AuthenticationViewModel extends FormViewModel  {
  final _navigationService = locator<NavigationService>();
  final _dialog = locator<DialogService>();
  final String successRoutes;
  final String title;
  AuthenticationViewModel(this.successRoutes, this.title);

  @override
  void setFormStatus(){}

  Future saveData() async {
    final result = await runBusyFuture(runAuthentication());
    if(!result.hasError) {
      _navigationService.navigateTo(successRoutes);
    }else {
      await _dialog.showDialog(
        title: title,
        description: '${result.errorMessage}'
      );
    }
  }

  Future <FirebaseAuthenticationResult> runAuthentication();
  // AuthenticationViewModel(
  //   this.successRoutes,
  // );
  // @override
  // void setFormStatus() {}

  // Future saveData() async {
  //   final result = await runBusyFuture(runAuthentication());
  //   if (!result.hasError) {
  //     _navigationService.navigateTo(successRoutes);
  //   } else {
  //     await _dialog.showDialog(
  //       title: 'Sign Up Failure',
  //       description: '${result.errorMessage}'
  //     );
  //     setValidationMessage(result.errorMessage);
  //   }
  // }

  // Future<FirebaseAuthenticationResult> runAuthentication();
}
