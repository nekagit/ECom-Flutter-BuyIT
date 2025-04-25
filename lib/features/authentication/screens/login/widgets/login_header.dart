import 'package:flutter/material.dart';
import 'package:timeit/utils/constants/image_strings.dart';
import 'package:timeit/utils/constants/text_strings.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Add this line to align items to the start
      children: [
        // You may want to center just the logo
        Center(
          child: Image(
            height: 100,
            image: AssetImage(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo,
            ),
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
      ],
    );
  }
}
