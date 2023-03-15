import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: TextStyle(
              fontFamily: 'IBM Plex Mono', fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
