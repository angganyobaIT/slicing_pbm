import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MainCamera extends StatefulWidget {
  final List<CameraDescription> cameras;
  const MainCamera({Key? key, required this.cameras}) : super(key:key);

  @override
  State<MainCamera> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainCamera> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}