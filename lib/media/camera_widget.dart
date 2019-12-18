import 'dart:async';
import 'package:dating_app/media/display_picture.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'package:dating_app/app_constant_values/color_constants.dart';

import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

class CameraWidget extends StatefulWidget {
  @override
  CameraState createState() => CameraState();
}

class CameraState extends State<CameraWidget> {
  List<CameraDescription> cameras;
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    setupCameras();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  Future<void> setupCameras() async {
    try {
      cameras = await availableCameras();
      _controller = new CameraController(cameras[0], ResolutionPreset.medium);
      _initializeControllerFuture = _controller.initialize();
    } on CameraException catch (_) {
      setState(() {});
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Take a picture')),
        // Wait until the controller is initialized before displaying the
        // camera preview. Use a FutureBuilder to display a loading spinner
        // until the controller has finished initializing.
        body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(_controller);
//                AspectRatio(
//                aspectRatio: _controller.value.aspectRatio,
//                child: CameraPreview(_controller),
//              ); TODO: research cameraview aspect ratio
            } else {
              // Otherwise, display a loading indicator.
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
        floatingActionButton: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  child: Icon(Icons.camera_alt),
                  // Provide an onPressed callback.
                  onPressed: () async {
                    // Take the Picture in a try / catch block. If anything goes wrong,
                    // catch the error.
                    try {
                      // Ensure that the camera is initialized.
                      await _initializeControllerFuture;

                      // Construct the path where the image should be saved using the
                      // pattern package.
                      final path = join(
                        // Store the picture in the temp directory.
                        // Find the temp directory using the `path_provider` plugin.
                        (await getTemporaryDirectory()).path,
                        '${DateTime.now()}.png',
                      );

                      // Attempt to take a picture and log where it's been saved.
                      await _controller.takePicture(path);

                      // If the picture was taken, display it on a new screen.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DisplayPictureScreen(imagePath: path),
                        ),
                      );
                    } catch (e) {
                      // If an error occurs, log the error to the console.
                      print(e);
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
