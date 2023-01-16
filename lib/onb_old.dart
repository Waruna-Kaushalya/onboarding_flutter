// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardingPage extends StatefulWidget {
//   const OnboardingPage({Key? key}) : super(key: key);

//   @override
//   State<OnboardingPage> createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   // final controller = PageController(initialPage: 0);

//   // int currentPage = 0;
//   late Ticker _ticker;
//   late AssetImage bgImage;
//   late AssetImage itemImage;

//   // late AssetImage bgImage1;
//   // late AssetImage bgImage2;
//   // late AssetImage bgImage3;

//   late AssetImage bgImageLine;

//   late AssetImage itemImage1;
//   late AssetImage itemImage2;
//   late AssetImage itemImage3;

//   late LiquidController liquidController;
//   @override
//   void initState() {
//     liquidController = LiquidController();

//     _ticker = Ticker((d) {
//       setState(() {});
//     })
//       ..start();

//     // bgImage1 = const AssetImage('assets/images/Bg-Blue.png');
//     // bgImage2 = const AssetImage('assets/images/Bg-Yellow.png');
//     // bgImage3 = const AssetImage('assets/images/Bg-Red.png');

//     bgImageLine = const AssetImage('assets/images/bg_line.png');

//     itemImage1 = const AssetImage('assets/images/petra.png');
//     itemImage2 = const AssetImage('assets/images/taj-mahal.png');
//     itemImage3 = const AssetImage('assets/images/pyramids.png');

//     super.initState();
//   }

//   @override
//   void dispose() {
//     // liquidController.
//     _ticker.dispose();
//     super.dispose();
//   }

//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     // precacheImage(bgImage1, context);
//     // precacheImage(bgImage2, context);
//     // precacheImage(bgImage3, context);
//     precacheImage(bgImageLine, context);

//     precacheImage(itemImage1, context);
//     precacheImage(itemImage2, context);
//     precacheImage(itemImage3, context);

//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (liquidController.currentPage == 0) {
//       // bgImage = bgImage1;
//       itemImage = itemImage1;
//     }
//     if (liquidController.currentPage == 1) {
//       // bgImage = bgImage2;
//       itemImage = itemImage2;
//     }
//     if (liquidController.currentPage == 2) {
//       // bgImage = bgImage3;
//       itemImage = itemImage3;
//     }
// // if(controller.)

//     var size = MediaQuery.of(context).size;
//     var time = DateTime.now().millisecondsSinceEpoch / 2000;
//     var scaleX = 1.2 + sin(time) * .05;
//     var scaleY = 1.2 + cos(time) * .07;
//     var offsetY = 20 + cos(time) * 20;
//     // return Stack(children: [
//     // Transform(
//     //   transform: Matrix4.diagonal3Values(scaleX, scaleY, 1),
//     //   child: Transform.translate(
//     //     offset: Offset(-(scaleX - 1) / 2 * size.width,
//     //         -(scaleY - 1) / 2 * size.height + offsetY),
//     //     child: Container(
//     //       decoration: BoxDecoration(
//     //         image: DecorationImage(image: bgImage, fit: BoxFit.cover),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // Container(
//     //   decoration: BoxDecoration(
//     //     gradient: LinearGradient(
//     //       begin: Alignment.bottomCenter,
//     //       end: Alignment.topCenter,
//     //       colors: [
//     //         Colors.black.withOpacity(1.0),
//     //         Colors.black.withOpacity(1),
//     //         Colors.black.withOpacity(0.9),
//     //         Colors.black.withOpacity(0.6),
//     //         Colors.black.withOpacity(0.3),
//     //         Colors.black.withOpacity(0.1),
//     //         Colors.black.withOpacity(0.025),
//     //         Colors.black.withOpacity(0.01),
//     //       ],
//     //     ),
//     //   ),
//     // ),
//     return Scaffold(
//         // backgroundColor: Colors.white,
//         backgroundColor: Colors.transparent,

//         // body: Stack(
//         // children: [
//         // Center(
//         //   child: Container(
//         //     color: Colors.transparent,
//         //     child: Column(
//         //       mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //       // crossAxisAlignment: CrossAxisAlignment.center,
//         //       children: [
//         //         const SizedBox(
//         //             // height: 150,
//         //             ),
//         //         // Container(
//         //         //   decoration: BoxDecoration(
//         //         //     image: DecorationImage(
//         //         //       image: itemImage,
//         //         //     ),
//         //         //   ),
//         //         // ),
//         //         SizedBox(
//         //           height: 400,
//         //           child: Image(
//         //             image: itemImage,
//         //             fit: BoxFit.fill,
//         //           ),
//         //         ),
//         //         // const SizedBox(
//         //         //   height: 50,
//         //         // ),
//         //         Column(
//         //           // mainAxisAlignment: MainAxisAlignment.center,
//         //           // crossAxisAlignment: CrossAxisAlignment.center,
//         //           children: const [
//         //             Text(
//         //               "Translate in Conversation",
//         //               textAlign: TextAlign.center,
//         //               style: TextStyle(
//         //                 fontWeight: FontWeight.w600,
//         //                 letterSpacing: 0.5,
//         //                 fontSize: 25,
//         //                 color: Colors.white60,
//         //               ),
//         //             ),
//         //             SizedBox(
//         //               height: 20,
//         //             ),
//         //             Text(
//         //               "Translate in Conversation",
//         //               textAlign: TextAlign.center,
//         //               style: TextStyle(
//         //                 fontWeight: FontWeight.w600,
//         //                 letterSpacing: 0.5,
//         //                 fontSize: 15,
//         //                 color: Colors.white60,
//         //               ),
//         //             )
//         //           ],
//         //         ),
//         //         const SizedBox(
//         //             // height: 30,
//         //             ),
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         body: Builder(
//           builder: (context) {
//             return Stack(
//               children: [
//                 LiquidSwipe(
//                   enableSideReveal: false,
//                   liquidController: liquidController,
//                   fullTransitionValue: 600,
//                   // slideIconWidget: Icon,
//                   pages: [
//                     Container(
//                       color: Colors.blue,
//                       child: Stack(
//                         children: [
//                           Transform(
//                             transform:
//                                 Matrix4.diagonal3Values(scaleX, scaleY, 1),
//                             child: Transform.translate(
//                               offset: Offset(-(scaleX - 1) / 2 * size.width,
//                                   -(scaleY - 1) / 2 * size.height + offsetY),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: bgImageLine, fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(1.0),
//                                   Colors.black.withOpacity(1),
//                                   Colors.black.withOpacity(0.9),
//                                   Colors.black.withOpacity(0.6),
//                                   Colors.black.withOpacity(0.3),
//                                   Colors.black.withOpacity(0.1),
//                                   Colors.black.withOpacity(0.025),
//                                   Colors.black.withOpacity(0.01),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                     // height: 150,
//                                     ),
//                                 // Container(
//                                 //   decoration: BoxDecoration(
//                                 //     image: DecorationImage(
//                                 //       image: itemImage,
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 SizedBox(
//                                   height: 400,
//                                   child: Image(
//                                     image: itemImage1,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 // const SizedBox(
//                                 //   height: 50,
//                                 // ),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 20),
//                                   child: Column(
//                                     // mainAxisAlignment: MainAxisAlignment.center,
//                                     // crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: const [
//                                       Text(
//                                         "Speak the World's Language",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           letterSpacing: 0.5,
//                                           fontSize: 22,
//                                           color: Colors.white60,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Text(
//                                         "Translate in over 100 languages both online and offline, communicate with anyone, anywhere",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w600,
//                                           letterSpacing: 0.5,
//                                           fontSize: 13,
//                                           color: Colors.white60,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                     // height: 30,
//                                     ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     Container(
//                       color: Colors.yellow[800],
//                       child: Stack(
//                         children: [
//                           Transform(
//                             transform:
//                                 Matrix4.diagonal3Values(scaleX, scaleY, 1),
//                             child: Transform.translate(
//                               offset: Offset(-(scaleX - 1) / 2 * size.width,
//                                   -(scaleY - 1) / 2 * size.height + offsetY),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: bgImageLine, fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(1.0),
//                                   Colors.black.withOpacity(1),
//                                   Colors.black.withOpacity(0.9),
//                                   Colors.black.withOpacity(0.6),
//                                   Colors.black.withOpacity(0.3),
//                                   Colors.black.withOpacity(0.1),
//                                   Colors.black.withOpacity(0.025),
//                                   Colors.black.withOpacity(0.01),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                     // height: 150,
//                                     ),
//                                 // Container(
//                                 //   decoration: BoxDecoration(
//                                 //     image: DecorationImage(
//                                 //       image: itemImage,
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 SizedBox(
//                                   height: 400,
//                                   child: Image(
//                                     image: itemImage2,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 // const SizedBox(
//                                 //   height: 50,
//                                 // ),
//                                 Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: const [
//                                     Text(
//                                       "Translate like a Pro",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 25,
//                                         color: Colors.white60,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 20,
//                                     ),
//                                     Text(
//                                       "Easily translate images, speech and text, for a seamless and efficient communication",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 15,
//                                         color: Colors.white60,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                     // height: 30,
//                                     ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       color: Colors.green,
//                       child: Stack(
//                         children: [
//                           Transform(
//                             transform:
//                                 Matrix4.diagonal3Values(scaleX, scaleY, 1),
//                             child: Transform.translate(
//                               offset: Offset(-(scaleX - 1) / 2 * size.width,
//                                   -(scaleY - 1) / 2 * size.height + offsetY),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: bgImageLine, fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(1.0),
//                                   Colors.black.withOpacity(1),
//                                   Colors.black.withOpacity(0.9),
//                                   Colors.black.withOpacity(0.6),
//                                   Colors.black.withOpacity(0.3),
//                                   Colors.black.withOpacity(0.1),
//                                   Colors.black.withOpacity(0.025),
//                                   Colors.black.withOpacity(0.01),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                     // height: 150,
//                                     ),
//                                 // Container(
//                                 //   decoration: BoxDecoration(
//                                 //     image: DecorationImage(
//                                 //       image: itemImage,
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 SizedBox(
//                                   height: 400,
//                                   child: Image(
//                                     image: itemImage3,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 // const SizedBox(
//                                 //   height: 50,
//                                 // ),
//                                 Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: const [
//                                     Text(
//                                       "Fluent Communication",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 25,
//                                         color: Colors.white60,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 20,
//                                     ),
//                                     Text(
//                                       "Ace any conversation with our conversation mode and dictionary",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 15,
//                                         color: Colors.white60,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                     // height: 30,
//                                     ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       color: Colors.redAccent,
//                       child: Stack(
//                         children: [
//                           Transform(
//                             transform:
//                                 Matrix4.diagonal3Values(scaleX, scaleY, 1),
//                             child: Transform.translate(
//                               offset: Offset(-(scaleX - 1) / 2 * size.width,
//                                   -(scaleY - 1) / 2 * size.height + offsetY),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: bgImageLine, fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(1.0),
//                                   Colors.black.withOpacity(1),
//                                   Colors.black.withOpacity(0.9),
//                                   Colors.black.withOpacity(0.6),
//                                   Colors.black.withOpacity(0.3),
//                                   Colors.black.withOpacity(0.1),
//                                   Colors.black.withOpacity(0.025),
//                                   Colors.black.withOpacity(0.01),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                     // height: 150,
//                                     ),
//                                 // Container(
//                                 //   decoration: BoxDecoration(
//                                 //     image: DecorationImage(
//                                 //       image: itemImage,
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 SizedBox(
//                                   height: 400,
//                                   child: Image(
//                                     image: itemImage1,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 // const SizedBox(
//                                 //   height: 50,
//                                 // ),
//                                 Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: const [
//                                     Text(
//                                       "Make it Your Own",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 25,
//                                         color: Colors.white60,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 20,
//                                     ),
//                                     Text(
//                                       "Customize your app with minimalist design and themes, for a personal touch",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 15,
//                                         color: Colors.white60,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                     // height: 30,
//                                     ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       color: Colors.purple,
//                       child: Stack(
//                         children: [
//                           Transform(
//                             transform:
//                                 Matrix4.diagonal3Values(scaleX, scaleY, 1),
//                             child: Transform.translate(
//                               offset: Offset(-(scaleX - 1) / 2 * size.width,
//                                   -(scaleY - 1) / 2 * size.height + offsetY),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                       image: bgImageLine, fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                                 colors: [
//                                   Colors.black.withOpacity(1.0),
//                                   Colors.black.withOpacity(1),
//                                   Colors.black.withOpacity(0.9),
//                                   Colors.black.withOpacity(0.6),
//                                   Colors.black.withOpacity(0.3),
//                                   Colors.black.withOpacity(0.1),
//                                   Colors.black.withOpacity(0.025),
//                                   Colors.black.withOpacity(0.01),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Center(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               // crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                     // height: 150,
//                                     ),
//                                 // Container(
//                                 //   decoration: BoxDecoration(
//                                 //     image: DecorationImage(
//                                 //       image: itemImage,
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 SizedBox(
//                                   height: 400,
//                                   child: Image(
//                                     image: itemImage1,
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 // const SizedBox(
//                                 //   height: 50,
//                                 // ),
//                                 Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   // crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: const [
//                                     Text(
//                                       "Make it Your Own",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 25,
//                                         color: Colors.white60,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 20,
//                                     ),
//                                     Text(
//                                       "Customize your app with minimalist design and themes, for a personal touch",
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w600,
//                                         letterSpacing: 0.5,
//                                         fontSize: 15,
//                                         color: Colors.white60,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(
//                                     // height: 30,
//                                     ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Container(
//                     //   color: Colors.transparent,
//                     //   // child: Image.asset(
//                     //   //   'assets/images/pyramids.png',
//                     //   //   fit: BoxFit.fitWidth,
//                     //   //   // package: App.pkg,
//                     //   // ),
//                     // ),
//                     // Container(
//                     //   color: Colors.transparent,
//                     //   // child: Image.asset(
//                     //   //   'assets/images/taj-mahal.png',
//                     //   //   fit: BoxFit.fitWidth,
//                     //   //   // package: App.pkg,
//                     //   // ),
//                     // ),
//                   ],
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 10,
//                   right: 20,
//                   height: 80,
//                   child: Center(
//                     child: Container(
//                       color: Colors.transparent,
//                       height: 80,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               liquidController.jumpToPage(page: 2);
//                             },
//                             child: const Text(
//                               "Skip",
//                             ),
//                           ),
//                           Center(
//                             child: AnimatedSmoothIndicator(
//                               activeIndex: liquidController.currentPage,
//                               count: 5,
//                               effect: const WormEffect(
//                                 spacing: 16,
//                                 dotColor: Colors.white,
//                               ),
//                               onDotClicked: (index) {
//                                 liquidController.animateToPage(page: index);
//                               },
//                               // controller: liquidController.currentPage,
//                               // count: 3,
//                               // effect: WormEffect(
//                               //   spacing: 16,
//                               //   dotColor: Colors.black26,
//                               //   activeDotColor: Colors.teal.shade700,
//                               // ),
//                               // onDotClicked: (index) => controller.animateToPage(
//                               //   index,
//                               //   duration: const Duration(
//                               //     milliseconds: 400,
//                               //   ),
//                               //   curve: Curves.easeInOut,
//                               // ),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               // var page = liquidController.currentPage = 1;

//                               liquidController.animateToPage(
//                                   page: liquidController.currentPage + 1 > 5
//                                       ? 0
//                                       : liquidController.currentPage + 1,
//                                   duration: 400);
//                             },
//                             child: const Text(
//                               "Next",
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             );
//           },
//         )
//         // ],
//         );
//     // bottomSheet: Container(
//     //   height: 80,
//     //   color: Colors.black,
//     //   // color: Colors.white,
//     //   child: Row(
//     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //     children: [
//     //       TextButton(
//     //         onPressed: () {
//     //           controller.jumpToPage(2);
//     //         },
//     //         child: const Text(
//     //           "Skip",
//     //         ),
//     //       ),
//     //       Center(
//     //         child: SmoothPageIndicator(
//     //           controller: controller,
//     //           count: 3,
//     //           // effect: WormEffect(
//     //           //   spacing: 16,
//     //           //   dotColor: Colors.black26,
//     //           //   activeDotColor: Colors.teal.shade700,
//     //           // ),
//     //           onDotClicked: (index) => controller.animateToPage(
//     //             index,
//     //             duration: const Duration(
//     //               milliseconds: 400,
//     //             ),
//     //             curve: Curves.easeInOut,
//     //           ),
//     //         ),
//     //       ),
//     //       TextButton(
//     //         onPressed: () => controller.nextPage(
//     //           duration: const Duration(
//     //             milliseconds: 400,
//     //           ),
//     //           curve: Curves.easeInOut,
//     //         ),
//     //         child: const Text(
//     //           "Next",
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // ),
//     // ),
//     // ]);
//   }
// }
