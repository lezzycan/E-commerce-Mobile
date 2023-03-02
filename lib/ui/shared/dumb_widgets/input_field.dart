
import 'package:e_commerce_mobile/core/constants/ecm_color.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final Function(String)? onSubmitted;
  final String? hintText;
  final Color? backgroundColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final bool hasBorder;
  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final BorderRadius? borderRadius;
  final Color? tappedColor;
  final int? minLines;
  final int? maxLines;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final int? maxLength;
  final bool autofocus;
  final bool? enabled;
  final double? focusBorderWidth;
  final Color? focusColor;
  final double? borderWidth;
  final Color? borderColor;
  final TextAlign? textAlignPosition;
  final Widget? suffix;

  const InputFieldWidget(
      {Key? key,
      this.focusColor,
      this.label,
      this.labelText,
      this.borderColor,
      this.focusBorderWidth,
      this.textAlignPosition,
      this.borderWidth,
      this.textInputAction,
      this.focusNode,
      this.controller,
      this.onSubmitted,
      this.hintText,
      this.backgroundColor,
      this.validator,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixIcon,
      this.suffixIconColor,
      this.prefixIconColor,
      this.hasBorder = false,
      this.keyboardType,
      this.hintTextStyle,
      this.borderRadius,
      this.tappedColor,
      this.minLines,
      this.maxLines,
      this.maxLength,
      this.autofocus = false,
      this.enabled,
      this.padding,
      this.labelStyle,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        enabled: enabled,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        autofocus: autofocus,
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        obscureText: obscureText,
        cursorColor: Theme.of(context).colorScheme.surface,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        style: textStyle.bodyMedium!.copyWith(
              color: EcmColors.secondaryTextColor,

            ),
          
        textAlign: textAlignPosition ?? TextAlign.left,
        decoration: InputDecoration(
          filled: false,
          contentPadding: padding,
          fillColor:
              backgroundColor ?? Theme.of(context).colorScheme.background,
          suffixIcon: suffixIcon,
          suffix: suffix,
          suffixIconColor:
              suffixIconColor ?? Theme.of(context).colorScheme.primaryContainer,
          prefixIcon: prefixIcon,
          prefixIconColor:
              prefixIconColor ?? Theme.of(context).colorScheme.primary,
          hintText: hintText,
          label: label,
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: 18,
            color: EcmColors.grey,
            fontWeight: FontWeight.w800
          ),
          hintStyle: hintTextStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
          focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 2,
              color: focusColor ?? EcmColors.secondaryColor,
            ),
          ),
          border: OutlineInputBorder(
          //  borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width:  2,
              style: BorderStyle.solid,
              color: borderColor ?? EcmColors.secondaryColor.shade900,
            ),
          ),
          enabledBorder:  OutlineInputBorder(
          //  borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width:  2,
              style: BorderStyle.solid,
              color: borderColor ?? EcmColors.secondaryColor.shade900,
            ),
          ),
          
        ),
      ),
    );
  }
}
