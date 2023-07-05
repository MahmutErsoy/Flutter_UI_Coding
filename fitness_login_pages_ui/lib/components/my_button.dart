import 'package:fitness_login_pages_ui/styles/project_text_styles.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.padding,
    this.onPressed,
  });
  final Color backgroundColor;
  final String text;
  final EdgeInsets padding;
  final ProjectTextStyles textStyles = ProjectTextStyles();
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          padding: padding,
          shape: const StadiumBorder(),
          backgroundColor: backgroundColor,
        ),
        child: Text(text, style: textStyles.buttonStyle));
  }
}
