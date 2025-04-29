import 'package:flutter/material.dart';
import 'package:timeit/features/shop/screens/home/widgets/home_app_bar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(child: Column(children: [CustomHomeAppBar()])),
          ],
        ),
      ),
    );
  }
}
