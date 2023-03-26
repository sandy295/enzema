import 'package:flutter/material.dart';
import 'package:tnau_f/HomeScreen.dart';

import 'constant.dart';

class NewScreen3 extends StatefulWidget {
  const NewScreen3({Key? key}) : super(key: key);

  @override
  State<NewScreen3> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen3> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('TNAU'),
      ),
      body: Center(

        child: SingleChildScrollView(

          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 300,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.lightBlue[500],
                        radius: 50,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnsCehUaKLc_r0Ce94G0sikeMUrjwgJ4k5REnH-TeTE5vxqYVJN8d53sUWc0qGcKIdJUw&usqp=CAU"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'Preventive Measures',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$str',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      //Text
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      const Text(
                        '* Cover the soil under the plants with mulch, such as fabric, straw, plastic mulch, or dried leaves',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Text
                      const Text(
                        '* Water at the base of each plant, using drip irrigation, a soaker hose, or careful hand watering.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        '* Increase airflow by staking or trellising, removing weeds, and spacing plants adequately apart',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '* Pruning the bottom leaves can also prevent early blight spores from splashing up from the soil onto leaves.',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '* Pinch off leaves with leaf spots and bury them in the compost pile.',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '* If you touch infected leaves, wash your hands well before working in healthy tomato plants. If you use pruning tools, wash and sanitize them after touching infected plants.',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 125,

                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Explore')
                              ],
                            ),
                          ),
                        ),



                      ) //SizedBox
                    ],
                  ),
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
        ), //Card
      ), //Center
    );
  }
}