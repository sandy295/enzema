import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pytorch_lite/pytorch_lite.dart';
import 'LoaderState.dart';
import 'constant.dart';
import 'Home.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  // late ModelObjectDetection _objectModel;
  late ModelObjectDetection _objectModelYoloV8;
  String? _imagePrediction;
  File? _image;
  final ImagePicker _picker = ImagePicker();
  bool objectDetection = false;
  List<ResultObjectDetection?> objDetect = [];
  bool firststate = false;
  bool message = true;
  // @override
  // void initState() {
  //   super.initState();
  //   loadModel();
  // }

  @override
  void initState() {

    super.initState();
    if (mounted) {
      loadModel();

    }
  }

  @override
  void dispose() {
    super.dispose();
  }
  Future loadModel() async {
    String pathObjectDetectionModelYolov8 = "assets/models/yolov8s.torchscript";
    // String pathObjectDetectionModel = "assets/models/12.torchscript";
    try {
      // _objectModel = await FlutterPytorch.loadObjectDetectionModel(
      //     pathObjectDetectionModel, 3, 640, 640,
      //     labelPath: "assets/labels/labels.txt");
      _objectModelYoloV8 = await PytorchLite.loadObjectDetectionModel(
          pathObjectDetectionModelYolov8, 3, 640, 640,
          labelPath: "assets/labels/labels.txt",
          objectDetectionModelType: ObjectDetectionModelType.yolov8);
    } catch (e) {
      if (e is PlatformException) {
        print("only supported for android, Error is $e");
      } else {
        print("Error is $e");
      }
    }
  }

  void handleTimeout() {
    // callback function
    // Do some work.
    setState(() {
      firststate = true;
    });
  }

  Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), handleTimeout);
  //running detections on image
  Future runObjectDetection() async {
    setState(() {
      firststate = false;
      message = false;
      val=0;
      str=null;
    });
    //pick an image

    // final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    final XFile? image = await showDialog<XFile>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Pick an Image"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Camera"),
                  onTap: () async {
                    Navigator.pop(context, await _picker.pickImage(source: ImageSource.camera));
                  },
                ),
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                  child: Text("Gallery"),
                  onTap: () async {
                    Navigator.pop(context, await _picker.pickImage(source: ImageSource.gallery));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
    // objDetect = await _objectModel.getImagePrediction(
    //     await File(image!.path).readAsBytes(),
    //     minimumScore: 0.1,
    //     IOUThershold: 0.3);
    objDetect = await _objectModelYoloV8.getImagePrediction(
        await File(image!.path).readAsBytes(),
        minimumScore: 0.1,
        iOUThreshold: 0.3);
    for (var element in objDetect) {
      str=element?.className;
      val=element?.classIndex;
      print(val);
      print({
        "score": element?.score,
        "className": element?.className,
        "class": element?.classIndex,
        "rect": {
          "left": element?.rect.left,
          "top": element?.rect.top,
          "width": element?.rect.width,
          "height": element?.rect.height,
          "right": element?.rect.right,
          "bottom": element?.rect.bottom,
        },
      });
    }
    scheduleTimeout(5 * 1000);
    setState(() {
      _image = File(image.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EczemaDetect")),
      backgroundColor: Colors.white,
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
              child:Column(
                children:  [
                  CircleAvatar(
                    radius: 52,
                    backgroundImage:AssetImage("images/2.png"),
                  ),
                  SizedBox(height: 12),
                  Text(
                      "EczemaDetect",
                      style: TextStyle(fontSize: 25,color: Colors.white),
                  ),


                ],
              )

            ),

            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text('About Us'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Home()));
              },
            ),
          ],
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !firststate
                  ? !message ? const LoaderState() : const Text("Select the Camera to Begin Detections")
                  : Expanded(
                child: SizedBox(
                    height: 5,
                    width: 300,
                    child:
                    _objectModelYoloV8.renderBoxesOnImage(_image!, objDetect)),
              ),
              Center(
                child: Visibility(
                  visible: _imagePrediction != null,
                  child: Text("$_imagePrediction"),
                ),
              ),
              //Button to click pic
              ElevatedButton(
                onPressed: () async {
                  Map<Permission, PermissionStatus> statuses = await [
                    Permission.storage, Permission.camera,
                  ].request();
                  print(statuses[Permission.camera]);
                  print(statuses[Permission.storage]);

                  if(statuses[Permission.storage]!.isGranted || statuses[Permission.camera]!.isGranted){
                    print("jj");
                  } else {
                    print('no permission provided');
                  }
                  runObjectDetection();
                },
                child: const Icon(Icons.camera),
              ),
            ],


          )),
    );
  }
}