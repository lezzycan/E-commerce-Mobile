import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/form_header_widget.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:e_commerce_mobile/ui/shared/ecm_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// This state is used to show how the login and sign up page will be layout

class AuthenticationLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? mainButtonTitle;
  final VoidCallback? onMainButtonTapped;
  final VoidCallback? haveAccountTapped;
  final VoidCallback? onCreateAccountTapped;
  final Widget? form;
  final String? validationMessage;
  final bool busy;
  final VoidCallback? onForgotPassword;
  const AuthenticationLayout(
      {super.key,
      required this.title,
      required this.subtitle,
      this.mainButtonTitle,
      this.onMainButtonTapped,
      this.haveAccountTapped,
      this.onCreateAccountTapped,
      this.form,
      this.validationMessage,
      this.busy = false,
      this.onForgotPassword});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _textTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        FormHeaderWidget(title: title, subtitle: subtitle),
        const EcmSpacing.mediumHeight(),
        form!,
        const EcmSpacing.height(18),
        if (onForgotPassword != null)
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onForgotPassword,
              child: TextInput(
                text: EcmStrings.forgotPassword,
                style: _textTheme.bodySmall!
                    .copyWith(color: EcmColors.infoColor.shade900),
              ),
            ),
          ),
          const EcmSpacing.height(18.0),
          if (validationMessage != null)
              Text(
                validationMessage!,
                style: _textTheme.bodySmall!.copyWith(color: EcmColors.red),
              ),
               if (validationMessage != null) const EcmSpacing.height(18.0),
            GestureDetector(
              onTap: onMainButtonTapped,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.h,
                decoration: BoxDecoration(
                  color: EcmColors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: busy
                    ?  CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(EcmColors.lightBackgroundColor),
                      )
                    : Text(
                        mainButtonTitle!,
                        style:
                            _textTheme.bodyMedium!.copyWith(color: EcmColors.lightBackgroundColor),
                      ),
              ),
            ),
           const EcmSpacing.height(18.0),
            if (onCreateAccountTapped != null)
              GestureDetector(
                onTap: onCreateAccountTapped,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: _textTheme.bodySmall!
                          .copyWith(color: EcmColors.grey.shade900),
                    ),
                  const  EcmSpacing.smallWidth(),
                    Text(
                      'Create an account',
                      style:
                          _textTheme.bodySmall!.copyWith(color: EcmColors.green),
                    ),
                  ],
                ),
              ),
            const  EcmSpacing.height(18.0),
              if(haveAccountTapped != null)
               GestureDetector(
                onTap: haveAccountTapped,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account',
                      style: _textTheme.bodySmall!
                          .copyWith(color: EcmColors.grey.shade800),
                    ),
                   const EcmSpacing.smallWidth(),
                    Text(
                      'Login',
                      style:
                          _textTheme.bodySmall!.copyWith(color: EcmColors.green),
                    ),
                  ],
                ),
              ),
              
      ],
    );
  }
}
