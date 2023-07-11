import 'package:flutter/material.dart';

import 'package:tnau_f/HomeScreen.dart';

import 'TomatoDiseases.dart';


class Crops extends StatefulWidget {
  const Crops({Key? key}) : super(key: key);

  @override
  State<Crops> createState() => _CropsScreenState();
}

class _CropsScreenState extends State<Crops> {
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
          title: const Text('CROPS'),
        ),
        body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(

                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                   child: InkWell(
                     onTap: ()   {
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const TomatoDiseases()));
                     },
                     child: const CircleAvatar(
                       radius: 10,

                       backgroundImage:  NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6LHErSrjpwpj0XeX2cwXsG2Ghm_qJOUwrvw&usqp=CAU"
                       ),

                      ),
                   ),

                ),

              ],
            )

        );




  }
}