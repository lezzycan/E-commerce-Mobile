// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:e_commerce_mobile/ui/base/extension/validation_extension.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _LoginTextEditingControllers = {};

final Map<String, FocusNode> _LoginFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginTextValidations = {
  EmailValueKey: FormValidators.validateEmailAddress,
  PasswordValueKey: FormValidators.validatePassword,
};

mixin $Login on StatelessWidget {
  TextEditingController get EmailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get PasswordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get EmailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get PasswordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_LoginTextEditingControllers.containsKey(key)) {
      return _LoginTextEditingControllers[key]!;
    }
    _LoginTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginFocusNodes.containsKey(key)) {
      return _LoginFocusNodes[key]!;
    }
    _LoginFocusNodes[key] = FocusNode();
    return _LoginFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    EmailController.addListener(() => _updateFormData(model));
    PasswordController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    EmailController.addListener(() => _updateFormData(model));
    PasswordController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailValueKey: EmailController.text,
          PasswordValueKey: PasswordController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        EmailValueKey: _getValidationMessage(EmailValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _LoginTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_LoginTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginTextEditingControllers.clear();
    _LoginFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set emailValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          EmailValueKey: value,
        }),
    );

    if (_LoginTextEditingControllers.containsKey(EmailValueKey)) {
      _LoginTextEditingControllers[EmailValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_LoginTextEditingControllers.containsKey(PasswordValueKey)) {
      _LoginTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  void clearForm() {
    emailValue = '';
    passwordValue = '';
  }
}

extension Methods on FormViewModel {
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
}
