import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:e_commerce_mobile/ui/shared/ecm_spacing.dart';
import 'package:e_commerce_mobile/ui/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Startup extends StatelessWidget {
  const Startup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return ViewModelBuilder<StartupModel>.reactive(
      builder: (context, model, child) {
        return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(EcmStrings.startupBackgroundImage),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              height: height,
              width: width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    Row(
                      children: [
                     Expanded(
                       child: OutlinedButton(
                        onPressed: model.navigateToLogin, 
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor:const Color(0xff272727),
                          padding: const EdgeInsets.symmetric(horizontal: 15)
                        ),
                        child: TextInput(text: 'Login',
                        style: textTheme.bodySmall!.copyWith(color: Colors.red, fontSize: 30),)),
                     ),
                     const EcmSpacing.height(18),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                          foregroundColor:Colors.white,
                          backgroundColor: EcmColors.infoColor,
                          padding: const EdgeInsets.symmetric(horizontal: 15)
                          ),
                          onPressed: model.navigateToCreateAccount,
                           child:  TextInput(text: 'Signup',
                           style: textTheme.bodySmall!.copyWith(color: EcmColors.grey.shade50),),),
                      )
                      ],
                    ),
                  ],
                ),
              ),
            ),
              
              ),
            ),
        );
      },
      viewModelBuilder: () => StartupModel(),
    );
  }
}
