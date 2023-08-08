import 'package:fitness_login_pages_ui/components/my_button.dart';
import 'package:fitness_login_pages_ui/components/png_image.dart';
import 'package:fitness_login_pages_ui/constans/project_text.dart';
import 'package:fitness_login_pages_ui/pages/login_page_login_screen.dart';
import 'package:fitness_login_pages_ui/pages/login_page_signup_screen.dart';
import 'package:fitness_login_pages_ui/styles/project_text_styles.dart';
import 'package:fitness_login_pages_ui/utils/color_util.dart';
import 'package:fitness_login_pages_ui/utils/image_items.dart';
import 'package:fitness_login_pages_ui/utils/padding_util.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ProjectPadding paddingUtil = ProjectPadding();
  final ColorsUtilty colorUtil = ColorsUtilty();
  final ProjectTextStyles textStyles = ProjectTextStyles();

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
          Padding(
            padding: paddingUtil.pageExplanationPadding,
            child: Text(
              ProjectText.mainPageExplanationText,
              maxLines: 2,
              style: textStyles.pageExplanation,
            ),
          ),
          const SizedBox(height: 10),
          MyButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            text: ProjectText.loginText,
            backgroundColor: colorUtil.purpleColor,
            padding: paddingUtil.loginPadding,
          ),
          Padding(
            padding: paddingUtil.verticalButtonPadding,
            child: MyButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
              },
              text: ProjectText.signText,
              backgroundColor: colorUtil.orangeColor,
              padding: paddingUtil.signUpPadding,
            ),
          ),
          MyButton(
              text: ProjectText.withOthersText,
              backgroundColor: colorUtil.blueColor,
              padding: paddingUtil.withOthersPadding) //
        ],
      ),
    );
  }
}
