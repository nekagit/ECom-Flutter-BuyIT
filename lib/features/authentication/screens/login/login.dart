import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timeit/common/styles/spacing_styles.dart';
import 'package:timeit/utils/constants/colors.dart';
import 'package:timeit/utils/constants/image_strings.dart';
import 'package:timeit/utils/constants/sizes.dart';
import 'package:timeit/utils/constants/text_strings.dart';
import 'package:timeit/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 100,
                    image: AssetImage(
                      dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: TSizes.spaceBtwSections,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.direct_right),
                              labelText: TTexts.email,
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.password_check),
                              labelText: TTexts.password,
                              suffixIcon: Icon(Iconsax.eye_slash),
                            ),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwInputFields / 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  const Text(TTexts.rememberMe),
                                ],
                              ),

                              TextButton(
                                onPressed: () {},
                                child: const Text(TTexts.forgetPassword),
                              ),
                            ],
                          ),
                          const SizedBox(height: TSizes.spaceBtwSections),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems),

                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 0.5,
                        indent: 50,
                        endIndent: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
