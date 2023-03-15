import 'package:flutter/material.dart';
import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Skills",
            style: TextStyle(
                fontFamily: 'IBM Plex Mono', fontSize: 16, color: Colors.green),
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.38,
          label: "ISO 27001",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "TCP/IP",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.71,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.52,
          label: "Flutter",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.95,
          label: "Network Fundamentals",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.98,
          label: "Linux Fundamentals",
        ),
      ],
    );
  }
}
