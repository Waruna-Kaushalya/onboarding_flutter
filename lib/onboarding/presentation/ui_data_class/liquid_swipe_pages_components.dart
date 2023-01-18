import 'package:flutter/material.dart';
// import 'package:onboarding_flutter/onboarding/presentation/core/string_constant.dart';
import 'package:onboarding_flutter/onboarding/presentation/ui_data_class/string_constant.dart';

class LiquidSwipePagesComponents {
  // final AssetImage bgImageLine;
  final AssetImage itemImage;
  final Color? bgColor;
  final String titleText;
  final String descriptionText;
  LiquidSwipePagesComponents({
    // required this.bgImageLine,
    required this.itemImage,
    required this.bgColor,
    required this.titleText,
    required this.descriptionText,
  });
}

List<LiquidSwipePagesComponents> liquidSwipePagesComponentsList = [
  LiquidSwipePagesComponents(
    // bgImageLine: bgImageLine,
    itemImage: const AssetImage(StringConstant.image1),
    bgColor: Colors.blue[900],
    titleText: StringConstant.title1,
    descriptionText: StringConstant.description1,
  ),
  LiquidSwipePagesComponents(
    // bgImageLine: bgImageLine,
    itemImage: const AssetImage(StringConstant.image2),
    bgColor: Colors.purple[800],
    titleText: StringConstant.title2,
    descriptionText: StringConstant.description2,
  ),
  LiquidSwipePagesComponents(
    // bgImageLine: bgImageLine,
    itemImage: const AssetImage(StringConstant.image3),
    bgColor: Colors.red[800],
    titleText: StringConstant.title3,
    descriptionText: StringConstant.description3,
  ),
  LiquidSwipePagesComponents(
    // bgImageLine: bgImageLine,
    itemImage: const AssetImage(StringConstant.image4),
    bgColor: Colors.purple[800],
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
