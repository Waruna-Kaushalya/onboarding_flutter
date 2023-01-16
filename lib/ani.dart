// import 'package:flutter/material.dart';

// class MyAnimation extends StatefulWidget {
//   @override
//   _MyAnimationState createState() => _MyAnimationState();
// }

// class _MyAnimationState extends State<MyAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation _scaleAnimation;
//   late Animation _moveAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     );
//     _scaleAnimation = Tween(begin: 1.0, end: 1.5).animate(_controller);
//     _moveAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     _controller.forward();
//     return AnimatedBuilder(
//       animation: _controller,
//       builder: (context, child) {
//         return Transform.translate(
//             offset: Offset(
//               _moveAnimation.value * MediaQuery.of(context).size.width,
//               0,
//             ),
//             child: Transform.scale(
//               scale: _scaleAnimation.value,
//               child: Image.asset("assets/images/Bg-Blue.png"),
//             ));
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
