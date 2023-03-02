import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/base/extension/validation_extension.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/authentication_layout.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/input_field.dart';
import 'package:e_commerce_mobile/ui/shared/ecm_spacing.dart';
import 'package:e_commerce_mobile/ui/views/login/login_view.form.dart';
import 'package:e_commerce_mobile/ui/views/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'Email', validator: FormValidators.validateEmailAddress),
  FormTextField(name: 'Password', validator: FormValidators.validatePassword),
])
class Login extends StatelessWidget with $Login {
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return ViewModelBuilder<LoginModel>.reactive(
      onViewModelReady: (viewModel) => syncFormWithViewModel(viewModel),
      builder: (context, model, child) => GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: AuthenticationLayout(
              title: EcmStrings.loginTitle,
              subtitle: EcmStrings.subTitle,
              busy: model.isBusy,
              mainButtonTitle: 'Sign In',
              onCreateAccountTapped: model.signUp,
              onMainButtonTapped: () => model.saveData(),
              form: Column(
                children: [
                  InputFieldWidget(
                    labelText: EcmStrings.emailLabel,
                    prefixIcon: const Icon(Icons.mail),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    validator: FormValidators.validateEmailAddress,
                    controller: EmailController,
                  ),
                  const EcmSpacing.mediumHeight(),
                  InputFieldWidget(
                    labelText: EcmStrings.passwordLabel,
                    prefixIcon: const Icon(Icons.lock),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    validator: FormValidators.validatePassword,
                    obscureText: model.isPassword,
                    controller: PasswordController,
                    suffixIcon: GestureDetector(
                      onTap: model.showPassword,
                      child: Icon(model.isPassword
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginModel(),
    );
  }
}
