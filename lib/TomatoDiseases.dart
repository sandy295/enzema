import 'package:flutter/material.dart';
import 'package:tnau_f/HomeScreen.dart';
import 'package:tnau_f/TomoD1.dart';
import 'package:tnau_f/TomoD2.dart';




class TomatoDiseases extends StatefulWidget {
  const TomatoDiseases({Key? key}) : super(key: key);

  @override
  State<TomatoDiseases> createState() => _TomatoDiseasesScreenState();
}

class _TomatoDiseasesScreenState extends State<TomatoDiseases> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: ()   {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomeScreen()));
            },
          ),

          backgroundColor: Colors.green,
          title: const Text('DISEASES'),
        ),
    body:

           ListView(
             children: <Widget>[
               const SizedBox(height: 25),

             Card(
              color: Colors.green[300]  ,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
               child: ListTile(
                          title: const Text("Early_blight"),
                          leading: const CircleAvatar(
                                child: Text("1"),
                          ),

                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const TomoD1()));
                          },

                  ),
              ),
               const Divider(
                color: Colors.blueGrey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),

               Card(
                 color: Colors.cyan[200]  ,
                 shape:
                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 child: ListTile(
                   title: const Text("GBNV"),
                   leading: const CircleAvatar(
                     child: Text("2"),
                   ),
                   onTap: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const TomoD2()));
                   },

                 ),
               ),
              ],
           ),




        );


  }
}