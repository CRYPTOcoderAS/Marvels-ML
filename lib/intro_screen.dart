import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/intro_app.dart';
import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  final List<Introduction> list = [
      Introduction(
        title: 'Identify',
        subTitle: 'Identifies every marvel superhero from an image',
        imageUrl: 'assets/marvel1.png',
      ),
      Introduction(
        title: 'Iron Man',
        subTitle: 'My personal favorite',
        imageUrl: 'assets/marvel2.png',
      ),
      Introduction(
        title: 'Thor',
        subTitle: "my baby cousin's favorite",
        imageUrl: 'assets/marvel3.png',
      )
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: IntroScreenOnboarding(
        introductionList: list,
        onTapSkipButton: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
          ));
        },
      ),
    );
  }
}