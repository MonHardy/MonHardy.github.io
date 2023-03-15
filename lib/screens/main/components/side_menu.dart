import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/coding.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:js/js.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "City",
                    text: "Belo Horizonte/MG",
                  ),
                  AreaInfoText(
                    title: "Country",
                    text: "Brazil",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "27",
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Follow me",
                            style: TextStyle(
                                fontFamily: 'IBM Plex Mono',
                                fontSize: 16,
                                color: Colors.green),
                          ),
                          SizedBox(width: defaultPadding / 2),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () =>
                              {launch("https://github.com/MonHardy")},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () =>
                              {launch("https://www.figma.com/@carlacoutinho")},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        IconButton(
                          onPressed: () =>
                              {launch("https://www.linkedin.com/in/cmcse/")},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Divider(),
                  Column(
                    children: [
                      Image.asset('assets/images/sightinginexperi.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontFamily: 'IBM Plex Mono', fontSize: 12, color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
