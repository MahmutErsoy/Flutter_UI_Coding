import 'package:fitness_login_pages_ui/utils/color_util.dart';
import 'package:fitness_login_pages_ui/utils/padding_util.dart';
import 'package:flutter/material.dart';

class PageExplanation extends StatelessWidget {
  PageExplanation({super.key, required this.firstText, required this.secondText});

  final ProjectPadding paddingUtil = ProjectPadding();
  final ColorsUtilty colorUtil = ColorsUtilty();

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingUtil.pageExplanationPadding,
      child: Container(
        alignment: Alignment.centerLeft,
        child: RichText(
            text: TextSpan(
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
            color: colorUtil.blackColor,
          ),
          children: [
            TextSpan(text: firstText),
            TextSpan(text: secondText),
          ],
        )),
      ),
    );
  }
}
