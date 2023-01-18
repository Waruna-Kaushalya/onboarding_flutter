import 'package:flutter/material.dart';

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
      color: Colors.transparent,
      child: Stack(
        children: [
          // Transform(
          //   transform: Matrix4.diagonal3Values(scaleX, scaleY, 1),
          //   child: Transform.translate(
          //     offset: Offset(
          //       -(scaleX - 1) / 2 * size.width,
          //       -(scaleY - 1) / 2 * size.height + offsetY,
          //     ),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: bgImageLine,
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(1.0),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.0),
                  Colors.black.withOpacity(0.0),
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
                  height: 500,
                ),
                // SizedBox(
                //   // height: 500,
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 0),
                //     child: Image(
                //       image: itemImage,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
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
