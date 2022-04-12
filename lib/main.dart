import 'package:flutter/material.dart';
import 'package:flutter_animations/drawing/drawing_based_animations.dart';
import 'package:flutter_animations/explicit/explicit_animations.dart';
import 'package:flutter_animations/implicit/implicit_animations.dart';
import 'package:flutter_animations/painter/custom_painter.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Implicit animations'),
            onTap: () => Get.to(() => ImplicitAnimationsPage()),
          ),
          ListTile(
            title: Text('Explicit animations'),
            onTap: () => Get.to(() => ExplicitAnimationsPage()),
          ),
          ListTile(
            title: Text('Custom Painter'),
            onTap: () => Get.to(() => CustomPainterPage()),
          ),
          ListTile(
            title: Text('Drawing based animations'),
            onTap: () => Get.to(() => DrawingBasedAnimationPage()),
          ),
        ],
      ),
    );
  }
}
