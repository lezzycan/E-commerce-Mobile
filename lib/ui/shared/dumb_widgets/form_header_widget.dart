
import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:e_commerce_mobile/core/constants/ecm_strings.dart';
import 'package:e_commerce_mobile/ui/shared/dumb_widgets/text.dart';
import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Image(image:  const AssetImage(EcmStrings.formHeaderImage,),
        height: size.height * 0.2,
        ),
        TextInput(text: title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: EcmColors.secondaryTextColor,
        fontWeight: FontWeight.w900),
        ),
         TextInput(text: subtitle, 
         style:Theme.of(context).textTheme.bodyMedium ,)
      ],
    );
  }
}
