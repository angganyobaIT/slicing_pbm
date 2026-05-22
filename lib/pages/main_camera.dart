import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:slicing_pbm/main.dart' show cameras;
import 'package:slicing_pbm/pages/preview_camera.dart';

class MainCamera extends StatefulWidget {
  final List<CameraDescription> cameras;
  const MainCamera({Key? key, required this.cameras}) : super(key:key);

  @override
  State<MainCamera> createState() => _MainCameraState();
}

class _MainCameraState extends State<MainCamera> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PreviewCamera(cameras: cameras),
          ),
        ),
        icon: Icon(Icons.camera_alt),
      ), // IconButton
    ); // Container
  }
}