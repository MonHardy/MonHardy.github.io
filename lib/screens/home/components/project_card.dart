import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: 'IBM Plex Mono', color: Colors.green, fontSize: 14),
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              const url = 'https://tryhackme.com/p/sightinginexperi';
              launch(url);
            },
            child: Text(
              "Ler mais + ",
              style:
                  TextStyle(fontFamily: 'IBM Plex Mono', color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
