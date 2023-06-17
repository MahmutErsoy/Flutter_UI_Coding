import 'package:fitness_login_pages_ui/components/custom_text_field.dart';
import 'package:fitness_login_pages_ui/components/my_button.dart';
import 'package:fitness_login_pages_ui/components/png_image.dart';
import 'package:fitness_login_pages_ui/components/rich_text.dart';
import 'package:fitness_login_pages_ui/constans/project_text.dart';
import 'package:fitness_login_pages_ui/styles/project_text_styles.dart';
import 'package:fitness_login_pages_ui/utils/color_util.dart';
import 'package:fitness_login_pages_ui/utils/image_items.dart';
import 'package:fitness_login_pages_ui/utils/padding_util.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final ProjectTextStyles textStyles = ProjectTextStyles();
  final ColorsUtilty colorUtil = ColorsUtilty();
  final ProjectPadding paddingUtil = ProjectPadding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: paddingUtil.assetsPadding,
              child: SizedBox(
                height: 200,
                child: PngImage(name: ImageItems().gymClub),
              ),
            ),
            PageExplanation(firstText: ProjectText.makeText, secondText: ProjectText.yourselfText),
            Padding(
              padding: paddingUtil.textFieldPadding,
              child: Column(
                children: [
                  CustomTextField(
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      labelText: ProjectText.enterEmailText,
                      prefixIcon: Icons.email),
                  CustomTextField(
                      maxLength: 50,
                      autofillHints: const [AutofillHints.password],
                      labelText: ProjectText.enterPasswordText,
                      prefixIcon: Icons.lock)
                ],
              ),
            ),
            MyButton(
                backgroundColor: colorUtil.purpleColor, text: ProjectText.loginText, padding: paddingUtil.loginPadding),
            Padding(
              padding: paddingUtil.textPadding,
              child: Text(ProjectText.forgetText, style: textStyles.buttonStyle.copyWith(color: colorUtil.greyColor)),
            )
          ],
        ));
  }
}
