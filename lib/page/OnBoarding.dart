import 'package:flutter/material.dart';
import 'package:resepku/component/SliderPage.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [SliderPage()],
        ),
      ),
    );
  }
}
