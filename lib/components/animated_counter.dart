import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: TextStyle(
            fontFamily: 'IBM Plex Mono', fontSize: 16, color: Colors.green),
      ),
    );
  }
}
