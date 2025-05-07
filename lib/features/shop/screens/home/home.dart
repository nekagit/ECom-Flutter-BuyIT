import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timeit/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:timeit/features/shop/screens/home/widgets/home_categories.dart';
import 'package:timeit/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:timeit/utils/constants/image_strings.dart';
import 'package:timeit/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_bar.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_header.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomHomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const SearchContainer(
                    showBackground: true,
                    showBorder: true,
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const SectionHeading(showActionButton: false, text: 'Popular Categories', textColor: TColors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  PromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
