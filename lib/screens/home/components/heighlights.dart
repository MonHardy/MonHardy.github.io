import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import '../../../components/animated_counter.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(value: 40, text: "+"),
            label: "Followers",
          ),
          HeighLight(
            counter: AnimatedCounter(value: 20, text: "+"),
            label: "Repositories",
          ),
          HeighLight(
            counter: AnimatedCounter(value: 10, text: "+"),
            label: "Projects",
          ),
        ],
      ),
    );
  }
}
