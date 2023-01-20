import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/extensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../ui_data_class/onboarding_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late Ticker _ticker;

  late AssetImage bgImageLine;
  late AssetImage bgImageLine1;
  late AssetImage bgImageLine2;
  late AssetImage bgImageLine3;
  late AssetImage bgImageLine4;

  late CarouselController _controller;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
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

    super.didChangeDependencies();
  }

  int pagesCount = 4;
  int currentIndex = 0;
  int _previousPage = 0;
  bool isRight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 34, 50),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.9,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      setState(() {
                        currentIndex = index;
                        pageController = PageController(initialPage: 0);
                        if (index > _previousPage) {
                          log("--------------------------------");
                          log(index.toString());
                          log(_previousPage.toString());
                          log("--------------------------------");

                          isRight = true;
                          log("Scrolled to the right");
                        } else if (index < _previousPage) {
                          isRight = false;
                          log("Scrolled to the left");
                        }
                        _previousPage = index;
                        // pageController. = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                  ),
                  items: onboardingDataList.map((i) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: i.bgImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Stack(
                              children: [
                                // if (ifMove)
                                if (i.titleText.contains(
                                  onboardingDataList[currentIndex].titleText,
                                ))
                                  TitleTextWidget(
                                    titleText: i.titleText,
                                  ).animate().move(
                                        begin: Offset(
                                          isRight ? 500 : -500,
                                          0,
                                        ),
                                        end: const Offset(0, 0),
                                        delay: 50.ms,
                                        duration: 800.ms,
                                        curve: Curves.fastOutSlowIn,
                                      ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Stack(
                              children: [
                                // if (ifMove)
                                if (i.titleText.contains(
                                  onboardingDataList[currentIndex].titleText,
                                ))
                                  DescriptionTextWidget(
                                    descriptionText: i.descriptionText,
                                  ).animate().move(
                                        begin: Offset(
                                          isRight ? 500 : -500,
                                          0,
                                        ),
                                        end: const Offset(0, 0),
                                        delay: 150.ms,
                                        duration: 800.ms,
                                        curve: Curves.fastOutSlowIn,
                                      ),
                                // if (!ifMove)
                                //   TitleTextWidget(
                                //     titleText: i.titleText,
                                //   )
                              ],
                            ),
                          ),
                        ),
                        // Expanded(
                        //   flex: 1,
                        //   child: Center(
                        //     child: DescriptionTextWidget(
                        //       descriptionText: i.descriptionText,
                        //     ).animate().move(
                        //           begin: const Offset(0, 0),
                        //           end: const Offset(0, 0),
                        //           delay: 300.ms,
                        //           duration: 800.ms,
                        //           curve: Curves.fastOutSlowIn,
                        //         ),
                        //   ),
                        // ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 40,
            right: 15,
            child: Align(
              alignment: Alignment.topRight,
              child: currentIndex != 3
                  ? SkipButtonWidget(controller: _controller)
                  : SkipButtonWidget(controller: _controller).animate().fadeOut(
                        duration: 100.ms,
                        curve: Curves.easeOut,
                      ),
            ),
          ),
          // Positioned(
          //   bottom: MediaQuery.of(context).size.height * 0.1,
          //   left: 0,
          //   right: 0,
          //   height: MediaQuery.of(context).size.height * 0.1,
          //   child: Stack(
          //     children: [
          //       Builder(
          //         // key: UniqueKey(),
          //         builder: (context) {
          //           return DescriptionTextWidget(
          //             key: UniqueKey(),
          //             descriptionText:
          //                 onboardingDataList[currentIndex].descriptionText,
          //           ).animate().move(
          //                 begin: Offset(
          //                   isRight ? 500 : -500,
          //                   0,
          //                 ),
          //                 end: const Offset(0, 0),
          //                 delay: 200.ms,
          //                 duration: 800.ms,
          //                 curve: Curves.fastOutSlowIn,
          //               );
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.1,
            child: BottomPartWidget(
              controller: _controller,
              // pageController: pageController,
              currentIndex: currentIndex,
              pagesCount: pagesCount,
            ),
          )
        ],
      ),
    );
  }
}

class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({
    Key? key,
    required CarouselController controller,
    required this.currentIndex,
    required this.pagesCount,
    // required this.pageController,
  })  : _controller = controller,
        super(key: key);

  final CarouselController _controller;
  // final PageController pageController = PageController(initialPage: 0);

  final int currentIndex;
  final int pagesCount;

  @override
  Widget build(BuildContext context) {
    // if (currentIndex == 0) {
    //   pageController.animateTo(
    //     1,
    //     duration: 1.seconds,
    //     curve: Curves.fastOutSlowIn,
    //   );
    // }
    // if (currentIndex == 1) {
    //   pageController.jumpTo(
    //     2,
    //   );
    // }
    // if (currentIndex == 2) {
    //   pageController.jumpTo(
    //     3,
    //   );
    // }
    // if (currentIndex == 3) {
    //   pageController.jumpTo(
    //     4,
    //     // duration: 900.ms,
    //     // curve: Curves.fastOutSlowIn,
    //   );
    // }
    return Container(
      color: const Color.fromARGB(255, 1, 34, 50),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.s,
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: PageView(
          //       controller: pageController,
          //       scrollDirection: Axis.horizontal,

          //       // itemCount: 4,
          //       // itemBuilder: (context, index) {
          //       //   return const TitleTextWidget(
          //       //     titleText: StringConstant.title1,
          //       //   );
          //       // },
          //       children: const [
          //         TitleTextWidget(
          //           titleText: StringConstant.title1,
          //         ),
          //         TitleTextWidget(
          //           titleText: StringConstant.title2,
          //         ),
          //         TitleTextWidget(
          //           titleText: StringConstant.title3,
          //         ),
          // TitleTextWidget(
          //   titleText: StringConstant.title4,
          // ),
          //       ],
          //     ),
          //     // child: Stack(
          //     //   children: [
          //     //     if (currentIndex == 0)
          //     // Builder(
          //     //   builder: (context) {
          //     //     return const TitleTextWidget(
          //     //       titleText: StringConstant.title1,
          //     //     ).animate().move(
          //     //           begin: const Offset(500, 0),
          //     //           end: const Offset(0, 0),
          //     //           delay: 500.ms,
          //     //           duration: 1.seconds,
          //     //           curve: Curves.fastOutSlowIn,
          //     //         );
          //     //   },
          //     // ),
          //     //     if (currentIndex == 1)
          //     //       Builder(
          //     //         builder: (context) {
          //     //           return const TitleTextWidget(
          //     //             titleText: StringConstant.title2,
          //     //           ).animate().move(
          //     //                 begin: const Offset(500, 0),
          //     //                 end: const Offset(0, 0),
          //     //                 delay: 500.ms,
          //     //                 duration: 1.seconds,
          //     //                 curve: Curves.fastOutSlowIn,
          //     //               );
          //     //         },
          //     //       ),
          //     //     if (currentIndex == 2)
          //     //       Builder(
          //     //         builder: (context) {
          //     //           return const TitleTextWidget(
          //     //             titleText: StringConstant.title3,
          //     //           ).animate().move(
          //     //                 begin: const Offset(500, 0),
          //     //                 end: const Offset(0, 0),
          //     //                 delay: 500.ms,
          //     //                 duration: 1.seconds,
          //     //                 curve: Curves.fastOutSlowIn,
          //     //               );
          //     //         },
          //     //       ),
          //     //     if (currentIndex == 3)
          //     //       Builder(
          //     //         builder: (context) {
          //     //           return const TitleTextWidget(
          //     //             titleText: StringConstant.title4,
          //     //           ).animate().move(
          //     //                 begin: const Offset(500, 0),
          //     //                 end: const Offset(0, 0),
          //     //                 delay: 500.ms,
          //     //                 duration: 1.seconds,
          //     //                 curve: Curves.fastOutSlowIn,
          //     //               );
          //     //         },
          //     //       ),
          //     //   ],
          //     // ),
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: Builder(
          //       builder: (context) {
          //         return Stack(
          //           children: [
          //             if (currentIndex == 0)
          //               Builder(
          //                 builder: (context) {
          //                   return const DescriptionTextWidget(
          //                     descriptionText: StringConstant.description1,
          //                   ).animate().move(
          //                         begin: const Offset(500, 0),
          //                         end: const Offset(0, 0),
          //                         delay: 500.ms,
          //                         duration: 1.seconds,
          //                         curve: Curves.fastOutSlowIn,
          //                       );
          //                 },
          //               ),
          //             if (currentIndex == 1)
          //               Builder(
          //                 builder: (context) {
          //                   return const DescriptionTextWidget(
          //                     descriptionText: StringConstant.description2,
          //                   ).animate().move(
          //                         begin: const Offset(500, 0),
          //                         end: const Offset(0, 0),
          //                         delay: 500.ms,
          //                         duration: 1.seconds,
          //                         curve: Curves.fastOutSlowIn,
          //                       );
          //                 },
          //               ),
          //             if (currentIndex == 2)
          //               Builder(
          //                 builder: (context) {
          //                   return const DescriptionTextWidget(
          //                     descriptionText: StringConstant.description3,
          //                   ).animate().move(
          //                         begin: const Offset(500, 0),
          //                         end: const Offset(0, 0),
          //                         delay: 500.ms,
          //                         duration: 1.seconds,
          //                         curve: Curves.fastOutSlowIn,
          //                       );
          //                 },
          //               ),
          //             if (currentIndex == 3)
          //               Builder(
          //                 builder: (context) {
          //                   return const DescriptionTextWidget(
          //                     descriptionText: StringConstant.description4,
          //                   ).animate().move(
          //                         begin: const Offset(500, 0),
          //                         end: const Offset(0, 0),
          //                         delay: 500.ms,
          //                         duration: 1.seconds,
          //                         curve: Curves.fastOutSlowIn,
          //                       );
          //                 },
          //               ),
          //           ],
          //         );
          //       },
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.bottomCenter,
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
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(milliseconds: 900),
                        );
                      },
                      child: const Text(
                        "Previous",
                      ),
                    ),
                    Center(
                      child: AnimatedSmoothIndicator(
                        activeIndex: currentIndex,
                        count: pagesCount,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: Colors.blue,
                          dotHeight: 10,
                          spacing: 16,
                          dotColor: Colors.white,
                        ),
                        onDotClicked: (index) {
                          _controller.animateToPage(
                            index,
                            curve: Curves.easeOut,
                            duration: const Duration(milliseconds: 700),
                          );
                        },
                      ),
                    ),
                    Stack(
                      children: [
                        if (currentIndex < 3)
                          TextButton(
                            onPressed: () {
                              _controller.animateToPage(
                                currentIndex + 1 > pagesCount
                                    ? 0
                                    : currentIndex + 1,
                                curve: Curves.fastOutSlowIn,
                                duration: const Duration(milliseconds: 900),
                              );
                            },
                            child: const Text(
                              "Next",
                            ),
                          ),
                        if (currentIndex == 3)
                          TextButton(
                            onPressed: () {
                              // _controller.animateToPage(
                              //   currentIndex + 1 > pagesCount
                              //       ? 0
                              //       : currentIndex + 1,
                              //   curve: Curves.easeOut,
                              //   duration:
                              //       const Duration(milliseconds: 700),
                              // );
                            },
                            child: const Text(
                              "Next",
                            ),
                          ).animate().blur(
                                duration: 100.ms,
                                curve: Curves.easeOut,
                              ),
                        if (currentIndex == 3)
                          const Card(
                            color: Colors.green,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Done",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ).animate().fadeIn(
                                delay: 100.ms,
                                duration: 150.ms,
                                curve: Curves.ease,
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({
    Key? key,
    required this.descriptionText,
  }) : super(key: key);
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Text(
      descriptionText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        letterSpacing: 0.5,
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    Key? key,
    required CarouselController controller,
  })  : _controller = controller,
        super(key: key);

  final CarouselController _controller;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.animateToPage(
          4,
          // duration: 400,
          curve: Curves.ease,
          duration: const Duration(seconds: 2),
        );
      },
      child: const Card(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Skip",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
