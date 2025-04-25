import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeit/common/styles/spacing_styles.dart';
import 'package:timeit/common/widgets/login_signup/form_divider.dart';
import 'package:timeit/common/widgets/login_signup/social_buttons.dart';
import 'package:timeit/features/authentication/screens/login/widgets/login_form.dart';
import 'package:timeit/features/authentication/screens/login/widgets/login_header.dart';
import 'package:timeit/utils/constants/sizes.dart';
import 'package:timeit/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(dividerText: TTexts.signInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
