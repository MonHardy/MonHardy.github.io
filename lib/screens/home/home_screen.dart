import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import '../../models/Project.dart';
import '../main/main_screen.dart';
import 'components/Home_Banner.dart';
import '../../components/animated_counter.dart';
import 'components/heigh_light.dart';
import 'components/heighlights.dart';
import 'components/my_projects.dart';
import 'components/project_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
      ],
    );
  }
}
