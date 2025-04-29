import 'package:flutter/material.dart';
import 'package:timeit/common/widgets/appbar/appbar.dart';
import 'package:timeit/utils/constants/colors.dart';
import 'package:timeit/utils/constants/text_strings.dart';

import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      showBackArrow: false,
      title: Column(
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.titleLarge!.apply(color: TColors.white)),
        ],
      ),
      actions: [CartCounterIcon(onPressed: () {}, iconColor: TColors.white)],
    );
  }
}
