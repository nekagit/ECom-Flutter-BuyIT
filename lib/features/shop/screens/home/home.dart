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
        // Adding physics for smoother scrolling
        physics: const BouncingScrollPhysics(),
        child: Column(
          // Make sure the Column takes minimum space required
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header Section with Search and Categories
            PrimaryHeaderContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // App bar
                  const CustomHomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Search bar
                  const SearchContainer(
                    showBackground: true,
                    showBorder: true,
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),

                  // Categories section
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SectionHeading(showActionButton: false, text: 'Popular Categories', textColor: TColors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body Content - Promo Slider and Products
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Promo slider banners
                  PromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Products Section
                  const SectionHeading(text: 'Featured Products', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Product cards in a grid
                  SizedBox(
                    height: 300, // Provide explicit height for product display area
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: TSizes.gridViewSpacing,
                        crossAxisSpacing: TSizes.gridViewSpacing,
                        mainAxisExtent: 288, // Fixed height for product cards
                      ),
                      itemCount: 4, // Display 2 products for now
                      itemBuilder: (_, index) => const ProductCardVertical(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
