import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/extensions.dart';

class BubbleImageWidget extends StatelessWidget {
  const BubbleImageWidget({
    Key? key,
    required this.imageNumber,
    required this.widthPercentage,
  }) : super(key: key);

  final int imageNumber;
  final double widthPercentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widthPercentage,
      child: Image.asset(
        'assets/images/bub$imageNumber.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class Bub9Widget extends StatelessWidget {
  const Bub9Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 9,
      widthPercentage: 0.4,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 200.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub8Widget extends StatelessWidget {
  const Bub8Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 8,
      widthPercentage: 0.4,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 100.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub7Widget extends StatelessWidget {
  const Bub7Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 7,
      widthPercentage: 0.5,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 100.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub6Widget extends StatelessWidget {
  const Bub6Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 6,
      widthPercentage: 0.4,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 600.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub5Widget extends StatelessWidget {
  const Bub5Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 5,
      widthPercentage: 0.4,
    )
        .animate()
        .fadeIn(
          delay: 300.ms,
          duration: 600.ms,
          curve: Curves.fastOutSlowIn,
        )
        .move(
          begin: const Offset(
            0,
            300,
          ),
          end: const Offset(0, 0),
          duration: 600.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub4Widget extends StatelessWidget {
  const Bub4Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 4,
      widthPercentage: 0.4,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 100.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub3Widget extends StatelessWidget {
  const Bub3Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 3,
      widthPercentage: 0.25,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 500.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub2Widget extends StatelessWidget {
  const Bub2Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 2,
      widthPercentage: 0.3,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 400.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}

class Bub1Widget extends StatelessWidget {
  const Bub1Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BubbleImageWidget(
      imageNumber: 1,
      widthPercentage: 0.3,
    ).animate().move(
          begin: const Offset(
            0,
            -200,
          ),
          end: const Offset(0, 0),
          delay: 150.ms,
          duration: 500.ms,
          curve: Curves.fastOutSlowIn,
        );
  }
}
