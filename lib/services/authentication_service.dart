// ignore_for_file: unnecessary_null_comparison

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService extends  Equatable {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future loginWithEmail({required email, required password}) async {
    try {
      var user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return user != null;
    } catch (e) {
      return e.toString();
    }
  }

  Future signUpWithEmail({required email, required password}) async {
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return authResult.user != null;
    } catch (e) {
      return e.toString();
    }
  }
  
  @override
  
  List<Object?> get props => [_firebaseAuth];
}
