import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  double currentPageIndex = 0.0;

  //// Update Current Index when Page Scroll
  void updatePageIndicator(int index) {
    currentPageIndex = index.toDouble();
  }

  // Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex = index.toDouble();
    pageController.jumpToPage(index);
  }

  // Update Current Index & Jump to the next page
  void nextPage() {
    if (currentPageIndex == 2) {
      Get.to(LoginScreen());
    } else {
      int nextPage = currentPageIndex.toInt() + 1;
      currentPageIndex = nextPage.toDouble();
      pageController.jumpToPage(nextPage);
    }
  }

  // Update Current Index & Jump to the last page
  void skipPage() {
    currentPageIndex = 2.0;
    pageController.jumpToPage(2);
  }
}
