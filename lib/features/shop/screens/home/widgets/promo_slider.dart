import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:timeit/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(viewportFraction: 1, onPageChanged: (index, _) => controller.updatePageIndicator(index)),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    backgroundColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.grey,
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
