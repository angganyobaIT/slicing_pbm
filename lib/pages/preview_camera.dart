import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class PreviewCamera extends StatefulWidget {
  final List<CameraDescription>cameras;

  const PreviewCamera({Key? key, required this.cameras}) : super(key:key);
  
  @override
  State<PreviewCamera> createState() => _PreviewCameraState();
}

class _PreviewCameraState extends State<PreviewCamera> {
  late CameraController _cameraController;
  late Future<void> _initializeCameraController;
  int kameraIndex =0;

  @override
  void InitState(){
    super.initState();
    _initCamera(cameraController);
  }
  
  void _initCamera(CameraDescription cameraController){
    _cameraController=CameraController(cameraController, ResolutionPreset.high);
    _initializeCameraController=_cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}