import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "Knowledges",
            style: TextStyle(
                fontFamily: 'IBM Plex Mono', fontSize: 16, color: Colors.green),
          ),
        ),
        KnowledgeText(text: "LGPD, GDPR, PSI"),
        KnowledgeText(text: "Introduction to Cybersecurity"),
        KnowledgeText(text: "GIT"),
        KnowledgeText(text: "Linux"),
        KnowledgeText(text: "HTML, CSS, Flutter, Java, Dart"),
        KnowledgeText(text: "Network Fundamentals"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg", color: Colors.green),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
