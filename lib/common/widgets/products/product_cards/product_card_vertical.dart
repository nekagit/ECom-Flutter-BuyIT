import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timeit/common/styles/shadows.dart';
import 'package:timeit/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:timeit/common/widgets/images/rounded_image.dart';
import 'package:timeit/utils/constants/image_strings.dart';
import 'package:timeit/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icons.dart';
import '../../texts/products_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [ShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Use minimum space needed
        children: [
          // Product Image
          CircularContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const RoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),
                // Discount Tag
                Positioned(
                  top: 12,
                  child: CircularContainer(
                    radius: TSizes.sm,
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    backgroundColor: TColors.secondary.withAlpha(200), // Using withAlpha instead of withValues
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),
                // Favorite Button
                Positioned(top: 0, right: 0, child: CicularIcon(icon: Iconsax.heart5, color: Colors.red)),
              ],
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwItems / 2),

          // Product Details
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Title - Limited to 1 line to save space
                const ProductTitleText(title: "Green Nike Air Shoes", maxLines: 1, smallSize: true, textAlign: TextAlign.left),

                const SizedBox(height: TSizes.spaceBtwItems / 2),

                // Brand Name & Verification - in a constrained Row
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    const SizedBox(width: TSizes.xs),
                    const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwItems / 2),

                // Price
                Text('\$35.5', maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headlineSmall),

                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      ),
                    ),
                    child: SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: const Icon(Iconsax.add, color: TColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
