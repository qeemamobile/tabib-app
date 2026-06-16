
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constant/assets_manager.dart';
import '../../../../core/extension/app_extension.dart';
import '../../../../core/utilities/custom_image_view.dart';

class AdBannerData {
  final String imageUrl;

  AdBannerData({required this.imageUrl});
}

class AutoMovingAdsCarousel extends StatefulWidget {
  const AutoMovingAdsCarousel({super.key});

  @override
  State<AutoMovingAdsCarousel> createState() => _AutoMovingAdsCarouselState();
}

class _AutoMovingAdsCarouselState extends State<AutoMovingAdsCarousel> {
  late final PageController _pageController;
  Timer? _autoMoveTimer;
  int _currentIndex = 0;

  final List<AdBannerData> dynamicAds = [
    AdBannerData(imageUrl: AssetsManager.ads),
    AdBannerData(imageUrl: AssetsManager.ads),
    AdBannerData(imageUrl: AssetsManager.ads),
  ];

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    _startAutoMovingEngine();
  }

  void _startAutoMovingEngine() {
    _autoMoveTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_pageController.hasClients) {
        if (_currentIndex < dynamicAds.length - 1) {
          _currentIndex++;
        } else {
          _currentIndex = 0; // Seamlessly loop back to the first ad banner
        }

        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoMoveTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // The Viewport Banner
        SizedBox(
          height: 140,
          child: PageView.builder(
            controller: _pageController,
            itemCount: dynamicAds.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomImageView(
                  imagePath: dynamicAds[index].imageUrl,
                  radius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 12),
        SmoothPageIndicator(
          controller: _pageController, // PageController
          count: 3,
          effect: WormEffect(
            dotHeight: 8,
            dotColor: theme.primaryColor300,
            activeDotColor: theme.primaryColor,
          ),
          onDotClicked: (index) {},
        ),
      ],
    );
  }
}
