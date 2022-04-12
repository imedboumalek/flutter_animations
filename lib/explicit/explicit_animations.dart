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

class _FooTransitionPageState extends State<FooTransitionPage>
    with SingleTickerProviderStateMixin<FooTransitionPage> {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0.2, end: 1).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FooTransition'),
      ),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            decoration: BoxDecoration(color: Colors.green),
            width: 300,
            height: 300,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.isAnimating ? _controller.stop() : _controller.forward();
        },
        child: Icon(Icons.add),
      ),
    );
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
