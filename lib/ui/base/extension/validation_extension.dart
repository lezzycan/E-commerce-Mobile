import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

/// An extension used to easily add a validation method to a [TextFormField].
/// To use the extension you need to import the file.
/// in the validator property of the [TextFormField] you can add this extension by,
/// context.validateEmail, context.validatePassword, context.validateName, context.validatePhoneNumber.
/// E.G TextFormField(validator: context.validateEmail)
//extension ValidationExtension on BuildContext {

class FormValidators  extends FormViewModel {
    
   static  String? validateFieldNotEmpty(String? value) =>
      value == null || value.isEmpty ? 'Field cannot be empty' : null;

 static String? validateFieldNotNull(String? value) =>
      value == null ? 'Field cannot be empty' : null;

static   String? validateEmailAddress(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    return !emailValid ? 'Enter a Valid Email Address' : null;
  }

 static  String? validatePassword(String? value) => value == null || value.length < 6
      ? 'Password must have 6 or more characters'
      : null;

static String? validateConfirmPassword(
      {required String? value, required String? initialPassword}) {
    if (value == null || value.isEmpty) return 'Field cannot be empty';
    bool isConfirmed = value != initialPassword;
    return (isConfirmed) ? 'Passwords do not match' : null;
  }

 static  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) return 'Field cannot be empty';

    bool isPhoneValid = RegExp(r'(^(?:9)?[0-9]{11}$)').hasMatch(value);

    return (isPhoneValid) ? null : 'Please enter a valid phone number';
  }

static   String? validateFullName<T>(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    if (value.split(' ').length < 2) {
      return 'Please enter your FULL NAME';
    } else {
      return null;
    }
  }
  }
 

