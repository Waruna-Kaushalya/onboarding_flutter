import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late Ticker _ticker;
  // late AssetImage bgImage;
  // late AssetImage itemImage;

  late AssetImage bgImageLine;

  // late AssetImage itemImage1;
  // late AssetImage itemImage2;
  // late AssetImage itemImage3;

  late LiquidController liquidController;
  @override
  void initState() {
    liquidController = LiquidController();

    _ticker = Ticker((d) {
      setState(() {});
    })
      ..start();

    bgImageLine = const AssetImage('assets/images/bg_line.png');

    // itemImage1 = const AssetImage('assets/images/petra.png');
    // itemImage2 = const AssetImage('assets/images/taj-mahal.png');
    // itemImage3 = const AssetImage('assets/images/pyramids.png');

    super.initState();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    precacheImage(bgImageLine, context);

    precacheImage(const AssetImage(StringConstant.image1), context);
    precacheImage(const AssetImage(StringConstant.image2), context);
    precacheImage(const AssetImage(StringConstant.image3), context);

    // precacheImage(itemImage3, context);

    super.didChangeDependencies();
  }

  int pagesCount = 4;

  @override
  Widget build(BuildContext context) {
    // if (liquidController.currentPage == 0) {
    //   itemImage = itemImage1;
    // }
    // if (liquidController.currentPage == 1) {
    //   itemImage = itemImage2;
    // }
    // if (liquidController.currentPage == 2) {
    //   itemImage = itemImage3;
    // }

    var size = MediaQuery.of(context).size;
    var time = DateTime.now().millisecondsSinceEpoch / 2000;
    var scaleX = 1.2 + sin(time) * .05;
    var scaleY = 1.2 + cos(time) * .07;
    var offsetY = 20 + cos(time) * 20;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Builder(
        builder: (context) {
          return Stack(
            children: [
              LiquidSwipe(
                enableSideReveal: false,
                liquidController: liquidController,
                fullTransitionValue: 600,
                pages: [
                  ...liquidSwipePagesComponentsList.map(
                    (e) => LiquidSwipePagesWidget(
                      scaleX: scaleX,
                      scaleY: scaleY,
                      size: size,
                      offsetY: offsetY,
                      bgImageLine: bgImageLine,
                      itemImage: e.itemImage,
                      bgColor: e.bgColor!,
                      titleText: e.titleText,
                      descriptionText: e.descriptionText,
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                left: 10,
                right: 20,
                height: 80,
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            liquidController.jumpToPage(page: 2);
                          },
                          child: const Text(
                            "Skip",
                          ),
                        ),
                        Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: liquidController.currentPage,
                            count: pagesCount,
                            effect: const WormEffect(
                              spacing: 16,
                              dotColor: Colors.white,
                            ),
                            onDotClicked: (index) {
                              liquidController.animateToPage(page: index);
                            },
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            liquidController.animateToPage(
                              page:
                                  liquidController.currentPage + 1 > pagesCount
                                      ? 0
                                      : liquidController.currentPage + 1,
                              duration: 400,
                            );
                          },
                          child: const Text(
                            "Next",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

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

// Map<String, String> pagesTitleAndDescription = {};
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

class LiquidSwipePagesWidget extends StatelessWidget {
  const LiquidSwipePagesWidget({
    Key? key,
    required this.scaleX,
    required this.scaleY,
    required this.size,
    required this.offsetY,
    required this.bgImageLine,
    required this.itemImage,
    required this.bgColor,
    required this.titleText,
    required this.descriptionText,
  }) : super(key: key);

  final double scaleX;
  final double scaleY;
  final Size size;
  final double offsetY;
  final AssetImage bgImageLine;
  final AssetImage itemImage;
  final Color bgColor;
  final String titleText;
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Stack(
        children: [
          Transform(
            transform: Matrix4.diagonal3Values(scaleX, scaleY, 1),
            child: Transform.translate(
              offset: Offset(
                -(scaleX - 1) / 2 * size.width,
                -(scaleY - 1) / 2 * size.height + offsetY,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: bgImageLine,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1.0),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.00),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  // height: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image(
                      image: itemImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      Text(
                        titleText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        descriptionText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          // fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
