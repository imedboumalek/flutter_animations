import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImplicitAnimationsPage extends StatelessWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('AnimatedFooPage'),
            onTap: () => Get.to(AnimatedFooPage()),
          ),
          ListTile(
            title: Text('TweenAnimationBuilder'),
            onTap: () => Get.to(TweenAnimationBuilderPage()),
          ),
        ],
      ),
    );
  }
}

class AnimatedFooPage extends StatefulWidget {
  const AnimatedFooPage({Key? key}) : super(key: key);

  @override
  State<AnimatedFooPage> createState() => _AnimatedFooState();
}

class _AnimatedFooState extends State<AnimatedFooPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderPage> createState() => TweenAnimationBuilderPageState();
}

class TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox());
  }
}
