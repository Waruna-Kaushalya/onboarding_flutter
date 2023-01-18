import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    Key? key,
    required this.controller,
    required this.pagesCount,
    required this.currentIndex,
  }) : super(key: key);

  final CarouselController controller;
  final int pagesCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.transparent,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                controller.jumpToPage(2);
              },
              child: const Text(
                "Skip",
              ),
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: pagesCount,
                effect: const WormEffect(
                  spacing: 16,
                  dotColor: Colors.white,
                ),
                onDotClicked: (index) {
                  controller.animateToPage(index);
                },
              ),
            ),
            TextButton(
              onPressed: () {
                controller.animateToPage(
                  currentIndex + 1 > pagesCount ? 0 : currentIndex + 1,
                  // duration: 400,
                  duration: const Duration(milliseconds: 400),
                );
              },
              child: const Text(
                "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
