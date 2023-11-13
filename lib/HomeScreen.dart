import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_pytorch/pigeon.dart';
import 'package:flutter_pytorch/flutter_pytorch.dart';
import 'package:tnau_f/Crops.dart';
import 'package:tnau_f/NewScreen1.dart';
import 'package:tnau_f/NewScreen2.dart';
import 'package:tnau_f/NewScreen3.dart';

//import 'package:object_detection/LoaderState.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';





import 'LoaderState.dart';
import 'NewScreen.dart';
import 'constant.dart';
import 'Home.dart';

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_image_compress/flutter_image_compress.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ModelObjectDetection _objectModel;
  String? _imagePrediction;
  List? _prediction;
  File? _image;
  ImagePicker _picker = ImagePicker();
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

  // Future<void> testCompressAndGetFile(File file, String targetPath) async {
  //   File result = (await FlutterImageCompress.compressAndGetFile(
  //     file.absolute.path, targetPath,
  //     quality: 5,
  //   )) as File;
  //
  //   print(file.lengthSync());
  //   print(result.lengthSync());
  //
  //
  //
  //
  //
  //   Upload(result);
  // }


  void dioupload(File? image) async{
    final Dio dio=new Dio();
    try{
      var response = await dio.get("");
      print(response.statusCode);
    }
    on DioException catch (e){
      print(e);
    }
  }
  Upload(file) async {
    print("enterted uploads");
    if(file == null){
      return ;
    }
    final Dio dio=new Dio();


    DateTime datetime = DateTime.now();
    String dateStr = datetime.toString().substring(0, 10)+datetime.toString().substring(12, 26);
    String e=datetime.day.toString()+"_"+datetime.month.toString()+"_"+datetime.year.toString()+"_"+datetime.hour.toString()+"_"+datetime.minute.toString()+"_"+datetime.second.toString();
    print(e);
    print(dateStr);

    String filename = str!+e+".jpg";
    count++;

    print(filename);
    print("Making http request");
    final String baseurl = "http://agiot.tnau.ac.in/upload.php";
    FormData formdata = FormData.fromMap({
      "file": await MultipartFile.fromFile(
          file.path,
          filename: filename
      ),
    });
    Response response = await dio.post(baseurl,
      data: formdata,);
    if(response.statusCode == 200){
      print(response.toString());
      //print response from server
    }else{
      print("Error during connection to server.");
    }
  }
  // Future<void> uploadImage(File image) async {
  //   String url = 'http://localhost:5000/upload'; // Replace with your server address
  //
  //   // Create headers for CORS
  //   Map<String, String> headers = {
  //     'Content-Type': 'multipart/form-data',
  //     'Access-Control-Allow-Origin': '*', // Replace with the allowed origins
  //     'Access-Control-Allow-Methods': 'POST',
  //     'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
  //   };
  //
  //   // Create a multipart request
  //   var request = http.MultipartRequest('POST', Uri.parse(url));
  //
  //   // Attach the headers to the request
  //   request.headers.addAll(headers);
  //
  //   // Attach the file to the request
  //   var file = await http.MultipartFile.fromPath('image', image.path);
  //   request.files.add(file);
  //
  //   // Send the request
  //   var response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     // File uploaded successfully
  //     // You can handle the response here, such as displaying a success message
  //     print('File uploaded successfully');
  //   } else {
  //     // Error uploading file
  //     // You can handle the error here, such as displaying an error message
  //     print('Error uploading file');
  //   }
  // }

  Future loadModel() async {

    String pathObjectDetectionModel = "assets/models/12.torchscript";
    try {
      _objectModel = await FlutterPytorch.loadObjectDetectionModel(
          pathObjectDetectionModel, 3, 640, 640,
          labelPath: "assets/labels/labels.txt");
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

    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    objDetect = await _objectModel.getImagePrediction(
        await File(image!.path).readAsBytes(),
        minimumScore: 0.1,
        IOUThershold: 0.3);
    objDetect.forEach((element) {
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
    });
    scheduleTimeout(5 * 1000);
    setState(() {
      _image = File(image.path);
    });
    Upload(_image!);
    // final filePath = _image!.absolute.path;
    //
    // testCompressAndGetFile(_image!,filePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PlantroX")),
      backgroundColor: Colors.white,
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
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
                      "PlantroX",
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
              leading: const Icon(Icons.adb_outlined),
              title: const Text('Recommendation'),
              onTap: () {

                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Crops()));
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
              //Image with Detections....

              !firststate
                  ? !message ? const LoaderState() : const Text("Select the Camera to Begin Detections")
                  : Expanded(
                child: Container(
                    height: 5,
                    width: 300,
                    child:
                    _objectModel.renderBoxesOnImage(_image!, objDetect)),
              ),

              // !firststate
              //     ? LoaderState()
              //     : Expanded(
              //         child: Container(
              //             height: 150,
              //             width: 300,
              //             child: objDetect.isEmpty
              //                 ? Text("hello")
              //                 : _objectModel.renderBoxesOnImage(
              //                     _image!, objDetect)),
              //       ),
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
                  //Navigator.pop(context);
                },
                child: const Icon(Icons.camera),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),


                // onPressed: _sendingMails,
                onPressed:() {
                  // if (val == 0) {
                  //   Navigator.push(
                  //       context, MaterialPageRoute(builder: (context) => NewScreen()));
                  // }
                  if (str=="Early_blight"|| val==0 ) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const NewScreen1()));
                  }
                  if (str == "GBNV" || val==1) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const NewScreen2()));
                  }
                  if (str=="Healthy"|| val==2) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const NewScreen3()));
                  }
                },
                child: const Text('Recommendation'),
              ),
              // ElevatedButton(
              //   onPressed: () async {
              //     Map<Permission, PermissionStatus> statuses = await [
              //       Permission.storage, Permission.camera,
              //     ].request();
              //     print(statuses[Permission.camera]);
              //     print(statuses[Permission.storage]);
              //
              //     if(statuses[Permission.storage]!.isGranted || statuses[Permission.camera]!.isGranted){
              //       print("jj");
              //     } else {
              //       print('no permission provided');
              //     }
              //   },
              //   child: Text('Select Image'),
              // ),
            ],


          )),
    );
  }
}