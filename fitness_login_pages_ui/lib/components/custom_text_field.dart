import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.keyboardType,
      required this.autofillHints,
      required this.labelText,
      required this.prefixIcon,
      this.maxLength});

  final TextInputType? keyboardType;
  final List<String> autofillHints;
  final String labelText;
  final IconData prefixIcon;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        labelText: labelText,
      ),
    );
  }
}
