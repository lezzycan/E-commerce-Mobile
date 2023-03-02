// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.text,
    this.style,
    this.textAlign,
    this.overflow,
  }) : super(key: key);
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: TextAlign.start ?? textAlign,
      overflow: TextOverflow.ellipsis ?? overflow,
    );
  }
}
