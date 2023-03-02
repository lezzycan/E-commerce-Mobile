import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/base/extension/validation_extension.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/authentication_layout.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/input_field.dart';
import 'package:e_commerce_mobile/ui/shared/ecm_spacing.dart';
import 'package:e_commerce_mobile/ui/views/create_account/create_Account_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'create_account_view.form.dart';

  @FormView(fields: [
  FormTextField(name: 'FullName', 
  validator: FormValidators.validateFullName ),
  FormTextField(name: 'Email',
  validator: FormValidators.validateEmailAddress ),
  FormTextField(name: 'Password',
  validator: FormValidators.validatePassword ),
])
class CreateAccount extends StatelessWidget with $CreateAccount {

  CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   
    final _textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<CreateAccountModel>.reactive(
      onViewModelReady: (viewModel) => listenToFormUpdated(viewModel),
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
            title: EcmStrings.createAccountTitle,
            subtitle: EcmStrings.createAccountSubTitle,
            mainButtonTitle: 'Sign Up',
            onMainButtonTapped: () => model.saveData(),
            haveAccountTapped: model.signIn,
            onForgotPassword: () {},
            form: Column(children: [
              InputFieldWidget(
                labelText: 'Full Name',
                controller: FullNameController,
                borderRadius: BorderRadius.circular(8),
                labelStyle:
                    _textTheme.bodySmall!.copyWith(color: EcmColors.grey),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
               validator: FormValidators.validateFullName,
              ),
              const EcmSpacing.xSmallHeight(),
              InputFieldWidget(
                labelText: 'Email',
                controller: EmailController,
                borderRadius: BorderRadius.circular(8),
                labelStyle:
                    _textTheme.bodySmall!.copyWith(color: EcmColors.grey),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
             //   validator: context.validateEmailAddress,
              ),
              const EcmSpacing.smallHeight(),
              InputFieldWidget(
                labelText: 'Password',
                obscureText: model.isPassword,
                controller: PasswordController,
                validator: FormValidators.validatePassword,
                maxLines: 1,
                borderRadius: BorderRadius.circular(8),
                labelStyle:
                    _textTheme.bodySmall!.copyWith(color: EcmColors.grey),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                suffixIcon: GestureDetector(
                  onTap: model.showPassword,
                  child: Icon(model.isPassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
              const EcmSpacing.smallHeight(),
            ]),
          ),
        )),
      ),
      viewModelBuilder: () => CreateAccountModel(),
    );
  }
}
