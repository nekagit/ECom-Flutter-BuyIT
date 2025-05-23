import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:timeit/utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key, required this.onPressed, required this.iconColor});

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_bag, color: TColors.white)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
