import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/project_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest projects",
          style: TextStyle(
              fontFamily: 'IBM Plex Mono', fontSize: 20, color: Colors.green),
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: ((context, index) => ProjectCard(
                project: demo_projects[index],
              )),
        ),
      ],
    );
  }
}
