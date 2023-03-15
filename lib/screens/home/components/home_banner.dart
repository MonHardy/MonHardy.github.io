import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/cybersecurity.png",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to \nmy space",
                  style: TextStyle(
                      fontFamily: 'IBM Plex Mono',
                      fontSize: 55,
                      color: Colors.white),
                ),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    "SAIBA MAIS",
                    style: TextStyle(color: darkColor),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
          fontFamily: 'IBM Plex Mono', fontSize: 14, color: Colors.white),
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
          Text("Estudando "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Políticas de Segurança da Informação ",
                speed: Duration(milliseconds: 60),
                //28:25
              ),
              TyperAnimatedText("ISO 27001 / LGPD ",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Cybersecurity ",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("Network ", speed: Duration(milliseconds: 60))
            ],
          ),
          FlutterCodedText(),
          SizedBox(width: defaultPadding / 2),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "cybersecurity",
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
