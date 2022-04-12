import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplicitAnimationsPage extends StatelessWidget {
  const ExplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explicit Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text('FooTransition'),
              onTap: () {
                Get.to(FooTransitionPage());
              }),
          ListTile(
              title: Text('AnimatedBuilder & AnimatedWidget'),
              onTap: () {
                Get.to(AnimatedBuilderPage());
              }),
        ],
      ),
    );
  }
}

class FooTransitionPage extends StatefulWidget {
  const FooTransitionPage({Key? key}) : super(key: key);

  @override
  State<FooTransitionPage> createState() => _FooTransitionPageState();
}

class _FooTransitionPageState extends State<FooTransitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FooTransition'),
        ),
        body: SizedBox());
  }
}

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder & AnimatedWidget'),
      ),
      body: SizedBox(),
    );
  }
}
