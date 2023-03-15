import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/side_menu.dart';

import '../../../constants.dart';
import '../../../components/animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Graduations",
            style: TextStyle(
                fontFamily: 'IBM Plex Mono', fontSize: 16, color: Colors.green),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.90,
                label: "SAD",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.50,
                label: "CC",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 1,
                label: "Law",
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("SAD - System Analysis and Development"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("CC - Computer Science"),
        ),
      ],
    );
  }
}
