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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final ProjectPadding paddingUtil = ProjectPadding();
  final ProjectTextStyles textStyles = ProjectTextStyles();
  final ColorsUtilty colorUtil = ColorsUtilty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: paddingUtil.assetsPadding,
              child: SizedBox(
                height: 200,
                child: PngImage(name: ImageItems().gymClub),
              ),
            ),
            PageExplanation(
              firstText: ProjectText.shapeText,
              secondText: ProjectText.yourBodyText,
            ),
            Padding(
              padding: paddingUtil.textFieldPadding,
              child: Column(
                children: [
                  CustomTextField(
                    autofillHints: const [AutofillHints.newUsername],
                    labelText: ProjectText.nameText,
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    labelText: ProjectText.enterEmailText,
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    keyboardType: TextInputType.visiblePassword,
                    autofillHints: const [AutofillHints.newPassword],
                    labelText: ProjectText.enterPasswordText,
                    prefixIcon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            MyButton(
              backgroundColor: colorUtil.orangeColor,
              text: ProjectText.signText,
              padding: paddingUtil.signUpPadding,
            ),
            const SizedBox(height: 8),
            Text(
              ProjectText.haveAccountText,
              style: textStyles.questionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
