import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DrawingBasedAnimationPage extends StatefulWidget {
  const DrawingBasedAnimationPage({Key? key}) : super(key: key);

  @override
  State<DrawingBasedAnimationPage> createState() => DrawingBasedAnimationState();
}

class DrawingBasedAnimationState extends State<DrawingBasedAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawing Based Animations'),
        ),
        body: Lottie.asset("assets/rocket.json"));
  }
}
