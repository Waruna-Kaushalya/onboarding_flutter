import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../ui_data_class/string_constant.dart';

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
  late AssetImage bgImageLine1;
  late AssetImage bgImageLine2;
  late AssetImage bgImageLine3;
  late AssetImage bgImageLine4;

  // late AssetImage itemImage1;
  // late AssetImage itemImage2;
  // late AssetImage itemImage3;

  // late LiquidController liquidController;
  late CarouselController _controller;

  @override
  void initState() {
    // liquidController = LiquidController();
    // controller = CarouselController();
    _controller = CarouselController();

    _ticker = Ticker((d) {
      setState(() {});
    })
      ..start();

    bgImageLine = const AssetImage('assets/images/bg_line.png');
    bgImageLine1 = const AssetImage('assets/images/1.png');

    bgImageLine2 = const AssetImage('assets/images/2.png');

    bgImageLine3 = const AssetImage('assets/images/3.png');
    bgImageLine4 = const AssetImage('assets/images/4.png');

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
    precacheImage(bgImageLine1, context);
    precacheImage(bgImageLine2, context);
    precacheImage(bgImageLine3, context);
    precacheImage(bgImageLine4, context);

    precacheImage(const AssetImage(StringConstant.image1), context);
    precacheImage(const AssetImage(StringConstant.image2), context);
    precacheImage(const AssetImage(StringConstant.image3), context);

    // precacheImage(itemImage3, context);

    super.didChangeDependencies();
  }

  int pagesCount = 4;
  int currentIndex = 0;

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

    // var size = MediaQuery.of(context).size;
    // var time = DateTime.now().millisecondsSinceEpoch / 2000;
    // var scaleX = 1.2 + sin(time) * .05;
    // var scaleY = 1.2 + cos(time) * .07;
    // var offsetY = 20 + cos(time) * 20;
    return Stack(
      children: [
        // // Container(
        // //   decoration: BoxDecoration(
        // //     image: DecorationImage(
        // //       image: AssetImage(
        // //         liquidController.currentPage == 0
        // //             ? "assets/images/1.png"
        // //             : "assets/images/2.png",
        // //       ),
        // //       fit: BoxFit.fill,
        // //     ),
        // //   ),
        // // ),
        // CarouselSlider(
        //   options: CarouselOptions(
        //     height: MediaQuery.of(context).size.height,

        //     // aspectRatio: 16 / 9,
        //     // viewportFraction: 0.8,
        //     // initialPage: 0,
        //     // enableInfiniteScroll: true,
        //     // reverse: false,
        //     // autoPlay: true,
        //     // autoPlayInterval: const Duration(seconds: 3),
        //     // autoPlayAnimationDuration: const Duration(milliseconds: 800),
        //     // autoPlayCurve: Curves.fastOutSlowIn,
        //     enlargeCenterPage: true,
        //     enlargeFactor: 0.3,
        //     // onPageChanged: callbackFunction,
        //     scrollDirection: Axis.horizontal,
        //   ),
        //   items: [
        //     "assets/images/1.png",
        //     "assets/images/2.png",
        //     "assets/images/1.png",
        //     "assets/images/1.png",
        //   ].map((i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return Container(
        //           decoration: BoxDecoration(
        //             image: DecorationImage(
        //               image: AssetImage(
        //                 i,
        //               ),
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //         );
        //         // return Container(
        //         //   width: MediaQuery.of(context).size.width,
        //         //   margin: const EdgeInsets.symmetric(horizontal: 5.0),
        //         //   decoration: const BoxDecoration(
        //         //     color: Colors.amber,
        //         //   ),
        //         //   child: Text(
        //         //     'text $i',
        //         //     style: const TextStyle(fontSize: 16.0),
        //         //   ),
        //         // );
        //       },
        //     );
        //   }).toList(),
        // ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Builder(
            builder: (context) {
              return Stack(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage(
                  //         liquidController.currentPage == 0
                  //             ? "assets/images/1.png"
                  //             : "assets/images/2.png",
                  //       ),
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                  // CarouselSlider(
                  //   options: CarouselOptions(
                  //     height: MediaQuery.of(context).size.height,
                  //     onPageChanged: (index, reason) {
                  //       setState(() {
                  //         pagesCount = index;
                  //       });
                  //     },

                  //     // aspectRatio: 16 / 9,
                  //     // viewportFraction: 0.8,
                  //     // initialPage: 0,
                  //     // enableInfiniteScroll: true,
                  //     // reverse: false,
                  //     // autoPlay: true,
                  //     // autoPlayInterval: const Duration(seconds: 3),
                  //     // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  //     // autoPlayCurve: Curves.fastOutSlowIn,
                  //     // enlargeCenterPage: true,
                  //     enlargeFactor: 0.3,
                  //     // onPageChanged: callbackFunction,
                  //     scrollDirection: Axis.horizontal,
                  //     viewportFraction: 1.0,
                  //     enlargeCenterPage: false,
                  //   ),
                  //   items: [
                  //     "assets/images/1.png",
                  //     "assets/images/2.png",
                  //     "assets/images/1.png",
                  //     "assets/images/1.png",
                  //   ].map((i) {
                  //     return Builder(
                  //       builder: (BuildContext context) {
                  //         return Container(
                  //           decoration: BoxDecoration(
                  //             image: DecorationImage(
                  //               image: AssetImage(
                  //                 i,
                  //               ),
                  //               fit: BoxFit.fill,
                  //             ),
                  //           ),
                  //         );
                  //         // return Container(
                  //         //   width: MediaQuery.of(context).size.width,
                  //         //   margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  //         //   decoration: const BoxDecoration(
                  //         //     color: Colors.amber,
                  //         //   ),
                  //         //   child: Text(
                  //         //     'text $i',
                  //         //     style: const TextStyle(fontSize: 16.0),
                  //         //   ),
                  //         // );
                  //       },
                  //     );
                  //   }).toList(),
                  // ),
                  // LiquidSwipe(
                  //   enableSideReveal: false,
                  //   liquidController: liquidController,
                  //   fullTransitionValue: 600,
                  //   pages: [
                  //     ...liquidSwipePagesComponentsList.map(
                  //       (e) => LiquidSwipePagesWidget(
                  //         scaleX: scaleX,
                  //         scaleY: scaleY,
                  //         size: size,
                  //         offsetY: offsetY,
                  //         bgImageLine: bgImageLine,
                  //         itemImage: e.itemImage,
                  //         bgColor: e.bgColor!,
                  //         titleText: e.titleText,
                  //         descriptionText: e.descriptionText,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    // height: MediaQuery.of(context).size.height -
                    //     (MediaQuery.of(context).size.height * 0.3),
                    child: Column(
                      children: [
                        CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.7,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },

                            // aspectRatio: 16 / 9,
                            // viewportFraction: 0.8,
                            // initialPage: 0,
                            // enableInfiniteScroll: true,
                            // reverse: false,
                            // autoPlay: true,
                            // autoPlayInterval: const Duration(seconds: 3),
                            // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                            // autoPlayCurve: Curves.fastOutSlowIn,
                            // enlargeCenterPage: true,
                            // enlargeFactor: 0.3,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            // reverse: false,
                            enableInfiniteScroll: false,
                          ),
                          items: [
                            bgImageLine1,
                            bgImageLine2,
                            bgImageLine3,
                            bgImageLine4,
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: i,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                                // return Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                //   decoration: const BoxDecoration(
                                //     color: Colors.amber,
                                //   ),
                                //   child: Text(
                                //     'text $i',
                                //     style: const TextStyle(fontSize: 16.0),
                                //   ),
                                // );
                              },
                            );
                          }).toList(),
                        ),
                        // Container(height: MediaQuery.of(context).size.height * 0.2),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    right: 20,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "hrthrth thrtht",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        // const SizedBox(
                        //   height: 40,
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "descriperbbe ergerg ergr rge geer getionText",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    _controller.animateToPage(
                                      currentIndex - 1,
                                      // duration: 400,
                                      curve: Curves.easeOut,
                                      duration:
                                          const Duration(milliseconds: 700),
                                    );
                                  },
                                  child: const Text(
                                    "Pre",
                                  ),
                                ),
                                Center(
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: currentIndex,
                                    count: pagesCount,
                                    effect: const ExpandingDotsEffect(
                                      activeDotColor: Colors.blue,
                                      dotHeight: 5,
                                      spacing: 16,
                                      dotColor: Colors.white,
                                    ),
                                    onDotClicked: (index) {
                                      _controller.animateToPage(
                                        index,
                                        curve: Curves.easeOut,
                                        duration:
                                            const Duration(milliseconds: 700),
                                      );
                                    },
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _controller.animateToPage(
                                      currentIndex + 1 > pagesCount
                                          ? 0
                                          : currentIndex + 1,
                                      curve: Curves.easeOut,
                                      duration:
                                          const Duration(milliseconds: 700),
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
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

// class PageIndicatorWidget extends StatelessWidget {
//   const PageIndicatorWidget({
//     Key? key,
//     required this.liquidController,
//     required this.pagesCount,
//   }) : super(key: key);

//   final LiquidController liquidController;
//   final int pagesCount;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: Colors.transparent,
//         height: 80,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextButton(
//               onPressed: () {
//                 liquidController.jumpToPage(page: 2);
//               },
//               child: const Text(
//                 "Skip",
//               ),
//             ),
//             Center(
//               child: AnimatedSmoothIndicator(
//                 activeIndex: liquidController.currentPage,
//                 count: pagesCount,
//                 effect: const WormEffect(
//                   spacing: 16,
//                   dotColor: Colors.white,
//                 ),
//                 onDotClicked: (index) {
//                   liquidController.animateToPage(page: index);
//                 },
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 liquidController.animateToPage(
//                   page: liquidController.currentPage + 1 > pagesCount
//                       ? 0
//                       : liquidController.currentPage + 1,
//                   duration: 400,
//                 );
//               },
//               child: const Text(
//                 "Next",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LiquidSwipePagesComponents {
//   // final AssetImage bgImageLine;
//   final AssetImage itemImage;
//   final Color? bgColor;
//   final String titleText;
//   final String descriptionText;
//   LiquidSwipePagesComponents({
//     // required this.bgImageLine,
//     required this.itemImage,
//     required this.bgColor,
//     required this.titleText,
//     required this.descriptionText,
//   });
// }

// Map<String, String> pagesTitleAndDescription = {};
// class StringConstant {
//   static const String image1 = 'assets/images/hola.png';
//   static const String title1 = "Global Translation";
//   static const String description1 =
//       "Translate in 100+ online & 50+ offline languages.";

//   static const String image2 = 'assets/images/speech_to_text.png';
//   static const String title2 = "Fluent Communication";
//   static const String description2 =
//       "Seamless convosation with natural-sounding voices.";

//   static const String image3 = 'assets/images/image_to_text.png';
//   static const String title3 = "Snap and Translate";
//   static const String description3 =
//       "Instantly translate images to text with just one click";

//   static const String image4 = 'assets/images/speech_to_text.png';
//   static const String title4 = "Personalized Experience";
//   static const String description4 =
//       "Customizable minimalist design for personalized experience";
// }

// List<LiquidSwipePagesComponents> liquidSwipePagesComponentsList = [
//   LiquidSwipePagesComponents(
//     // bgImageLine: bgImageLine,
//     itemImage: const AssetImage(StringConstant.image1),
//     bgColor: Colors.blue[900],
//     titleText: StringConstant.title1,
//     descriptionText: StringConstant.description1,
//   ),
//   LiquidSwipePagesComponents(
//     // bgImageLine: bgImageLine,
//     itemImage: const AssetImage(StringConstant.image2),
//     bgColor: Colors.purple[800],
//     titleText: StringConstant.title2,
//     descriptionText: StringConstant.description2,
//   ),
//   LiquidSwipePagesComponents(
//     // bgImageLine: bgImageLine,
//     itemImage: const AssetImage(StringConstant.image3),
//     bgColor: Colors.red[800],
//     titleText: StringConstant.title3,
//     descriptionText: StringConstant.description3,
//   ),
//   LiquidSwipePagesComponents(
//     // bgImageLine: bgImageLine,
//     itemImage: const AssetImage(StringConstant.image4),
//     bgColor: Colors.purple[800],
//     titleText: StringConstant.title4,
//     descriptionText: StringConstant.description4,
//   ),
//   // LiquidSwipePagesComponents(
//   //   // bgImageLine: bgImageLine,
//   //   itemImage1: const AssetImage('assets/images/petra.png'),
//   //   bgColor: Colors.blueAccent,
//   //   titleText: "Speak the World's Language",
//   //   descriptionText:
//   //       "ranslate in over 100 languages both online and offline, communicate with anyone, anywhere",
//   // ),
// ];