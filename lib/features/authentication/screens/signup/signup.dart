import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeit/common/widgets/login_signup/form_divider.dart';
import 'package:timeit/common/widgets/login_signup/social_buttons.dart';
import 'package:timeit/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:timeit/utils/constants/sizes.dart';
import 'package:timeit/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const SignUpForm(),

              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              FormDivider(dividerText: TTexts.signUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
