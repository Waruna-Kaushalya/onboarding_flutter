// import 'package:flutter/material.dart';
// import 'package:onboarding_flutter/onboarding/presentation/core/string_constant.dart';
// import 'package:onboarding_flutter/onboarding/presentation/ui_data_class/string_constant.dart';

class OnboardingData {
  // final AssetImage bgImageLine;
  // final AssetImage itemImage;
  // final Color? bgColor;
  final String titleText;
  final String descriptionText;
  OnboardingData({
    // required this.bgImageLine,
    // required this.itemImage,
    // required this.bgColor,
    required this.titleText,
    required this.descriptionText,
  });
}

List<OnboardingData> onboardingDataList = [
  OnboardingData(
    // bgImageLine: bgImageLine,
    // itemImage: const AssetImage(StringConstant.image1),
    // bgColor: Colors.blue[900],
    titleText: StringConstant.title1,
    descriptionText: StringConstant.description1,
  ),
  OnboardingData(
    // bgImageLine: bgImageLine,
    // itemImage: const AssetImage(StringConstant.image2),
    // bgColor: Colors.purple[800],
    titleText: StringConstant.title2,
    descriptionText: StringConstant.description2,
  ),
  OnboardingData(
    // bgImageLine: bgImageLine,
    // itemImage: const AssetImage(StringConstant.image3),
    // bgColor: Colors.red[800],
    titleText: StringConstant.title3,
    descriptionText: StringConstant.description3,
  ),
  OnboardingData(
    // bgImageLine: bgImageLine,
    // itemImage: const AssetImage(StringConstant.image4),
    // bgColor: Colors.purple[800],
    titleText: StringConstant.title4,
    descriptionText: StringConstant.description4,
  ),
  // LiquidSwipePagesComponents(
  //   // bgImageLine: bgImageLine,
  //   itemImage1: const AssetImage('assets/images/petra.png'),
  //   bgColor: Colors.blueAccent,
  //   titleText: "Speak the World's Language",
  //   descriptionText:
  //       "ranslate in over 100 languages both online and offline, communicate with anyone, anywhere",
  // ),
];

class StringConstant {
  static const String image1 = 'assets/images/hola.png';
  static const String title1 = "Global Translation";
  static const String description1 =
      "Translate in 100+ online & 50+ offline languages.";

  static const String image2 = 'assets/images/speech_to_text.png';
  static const String title2 = "Fluent Communication";
  static const String description2 =
      "Seamless convosation with natural-sounding voices.";

  static const String image3 = 'assets/images/image_to_text.png';
  static const String title3 = "Snap and Translate";
  static const String description3 =
      "Instantly translate images to text with just one click";

  static const String image4 = 'assets/images/speech_to_text.png';
  static const String title4 = "Personalized Experience";
  static const String description4 =
      "Customizable minimalist design for personalized experience";
}
