// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:e_commerce_mobile/ui/base/extension/validation_extension.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FullNameValueKey = 'fullName';
const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _CreateAccountTextEditingControllers =
    {};

final Map<String, FocusNode> _CreateAccountFocusNodes = {};

final Map<String, String? Function(String?)?> _CreateAccountTextValidations = {
  FullNameValueKey: FormValidators.validateFullName,
  EmailValueKey: FormValidators.validateEmailAddress,
  PasswordValueKey: FormValidators.validatePassword,
};

mixin $CreateAccount on StatelessWidget {
  TextEditingController get FullNameController =>
      _getFormTextEditingController(FullNameValueKey);
  TextEditingController get EmailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get PasswordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get FullNameFocusNode => _getFormFocusNode(FullNameValueKey);
  FocusNode get EmailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get PasswordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_CreateAccountTextEditingControllers.containsKey(key)) {
      return _CreateAccountTextEditingControllers[key]!;
    }
    _CreateAccountTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CreateAccountTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CreateAccountFocusNodes.containsKey(key)) {
      return _CreateAccountFocusNodes[key]!;
    }
    _CreateAccountFocusNodes[key] = FocusNode();
    return _CreateAccountFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    FullNameController.addListener(() => _updateFormData(model));
    EmailController.addListener(() => _updateFormData(model));
    PasswordController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    FullNameController.addListener(() => _updateFormData(model));
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
          FullNameValueKey: FullNameController.text,
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
        FullNameValueKey: _getValidationMessage(FullNameValueKey),
        EmailValueKey: _getValidationMessage(EmailValueKey),
        PasswordValueKey: _getValidationMessage(PasswordValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _CreateAccountTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_CreateAccountTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CreateAccountTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CreateAccountFocusNodes.values) {
      focusNode.dispose();
    }

    _CreateAccountTextEditingControllers.clear();
    _CreateAccountFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get fullNameValue => this.formValueMap[FullNameValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set fullNameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          FullNameValueKey: value,
        }),
    );

    if (_CreateAccountTextEditingControllers.containsKey(FullNameValueKey)) {
      _CreateAccountTextEditingControllers[FullNameValueKey]?.text =
          value ?? '';
    }
  }

  set emailValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          EmailValueKey: value,
        }),
    );

    if (_CreateAccountTextEditingControllers.containsKey(EmailValueKey)) {
      _CreateAccountTextEditingControllers[EmailValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_CreateAccountTextEditingControllers.containsKey(PasswordValueKey)) {
      _CreateAccountTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFullName =>
      this.formValueMap.containsKey(FullNameValueKey) &&
      (fullNameValue?.isNotEmpty ?? false);
  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasFullNameValidationMessage =>
      this.fieldsValidationMessages[FullNameValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get fullNameValidationMessage =>
      this.fieldsValidationMessages[FullNameValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  void clearForm() {
    fullNameValue = '';
    emailValue = '';
    passwordValue = '';
  }
}

extension Methods on FormViewModel {
  setFullNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FullNameValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
}
