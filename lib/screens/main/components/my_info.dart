import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  "/Users/cc/Downloads/Responsive-and-Animated-Portfolio-Flutter-Starting-Project/assets/images/ok.png"),
            ),
            Spacer(),
            Text(
              "Carla Coutinho",
              style: TextStyle(
                  fontFamily: 'IBM Plex Mono',
                  fontSize: 16,
                  color: Colors.green),
            ),
            Text(
              "Cybersecurity and \n Software Development",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  fontFamily: 'IBM Plex Mono'),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
