import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: TColors.primary,
        height: 400, // Add height to make sure container is visible
        width: double.infinity, // Make sure it spans the full width
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: TColors.white.withValues(alpha: 0.1),
                width: 400, // Specify width
                height: 400, // Specify height
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: TColors.white.withValues(alpha: 0.1),
                width: 400, // Specify width
                height: 400, // Specify height
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
