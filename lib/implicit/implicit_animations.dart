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
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedFoo"),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1500),
          opacity: animate ? 1 : 0.2,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(animate ? 10 : 50),
                color: animate ? Colors.red : Colors.green),
            width: animate ? 300 : 150,
            height: animate ? 300 : 150,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            animate = !animate;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderPage> createState() => TweenAnimationBuilderPageState();
}

class TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/stars.jpeg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 300,
            height: 300,
            child: TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: ColorTween(
                  begin: Colors.white, end: Color.lerp(Colors.white, Colors.amber, sliderValue)),
              builder: (_, color, __) => ColorFiltered(
                colorFilter: ColorFilter.mode(color as Color, BlendMode.modulate),
                child: Image.asset("assets/moon.png"),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Slider(
              value: sliderValue,
              onChanged: (v) {
                print(v);
                setState(() {
                  sliderValue = v;
                });
              }),
        )
      ],
    ));
  }
}
