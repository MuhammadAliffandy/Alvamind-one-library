import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppCamera extends StatefulWidget {
  static const routeName = '/organism-camera';

  const AppCamera({
    Key? key,
  }) : super(key: key);

  @override
  _AppCameraState createState() => _AppCameraState();
}

class _AppCameraState extends State<AppCamera> {
  final photos = <File>[];

  void openCamera() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CameraCamera(
                  onFile: (file) {
                    photos.add(file);
                    Navigator.pop(context);
                    setState(() {});
                  },
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraCamera(
        onFile: (file) => print(file),
      ),
    );
  }
}
