import 'package:flutter/material.dart';

class OnboardingData {
  final AssetImage bgImage;

  final String titleText;
  final String descriptionText;
  OnboardingData({
    required this.bgImage,
    required this.titleText,
    required this.descriptionText,
  });
}

List<OnboardingData> onboardingDataList = [
  OnboardingData(
    bgImage: const AssetImage(StringConstant.image1),
    titleText: StringConstant.title1,
    descriptionText: StringConstant.description1,
  ),
  OnboardingData(
    bgImage: const AssetImage(StringConstant.image2),
    titleText: StringConstant.title2,
    descriptionText: StringConstant.description2,
  ),
  OnboardingData(
    bgImage: const AssetImage(StringConstant.image3),
    titleText: StringConstant.title3,
    descriptionText: StringConstant.description3,
  ),
  OnboardingData(
    bgImage: const AssetImage(StringConstant.image4),
    titleText: StringConstant.title4,
    descriptionText: StringConstant.description4,
  ),
];

class StringConstant {
  static const String image1 = 'assets/images/1.png';
  static const String title1 = "Global Translation";
  static const String description1 =
      "Translate in 100+ online & 50+ offline languages";

  static const String image2 = 'assets/images/2.png';
  static const String title2 = "Fluent Communication";
  static const String description2 =
      "Seamless convosation with natural-sounding voices";

  static const String image3 = 'assets/images/3.png';
  static const String title3 = "Snap and Translate";
  static const String description3 =
      "Instantly translate images to text with just one click";

  static const String image4 = 'assets/images/4.png';
  static const String title4 = "Personalized Experience";
  static const String description4 =
      "Customizable minimalist design for personalized experience";
}
