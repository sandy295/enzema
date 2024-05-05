import 'package:flutter/material.dart';
import 'package:tnau_f/HomeScreen.dart';


import 'constant.dart';

class NewScreen1 extends StatefulWidget {
  const NewScreen1({Key? key}) : super(key: key);

  @override
  State<NewScreen1> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen1> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Eczema'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: ()   {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomeScreen()));
          },
          ),
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
                          backgroundImage:  AssetImage("images/5.png"),
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
                        str!=null?'$str':'',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green[900],
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      //Text
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'SYMPTOMS',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),//SizedBox
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Infections start as small brown spots on older leaves, quickly increasing in size',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Text
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Brown irregular spots with concentric rings with yellow margins on leaves',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Brown elongated concentric rings on stem and fruits',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'RECOMMENDATIONS',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Removal and destruction of crop debris',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Crop rotation',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* Spray any one of the following fungicide:-',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     1) Hexaconazole 5% SC @ 1ml/litre (or)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     2) Propiconazole 25% EC @  1ml/litre (or)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     3) Metiram 70% WG @ 5g/litre',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),//Si
                      const Text(
                        'முன்பருவ இலைக்கருகல்',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),//S// zedBox

                      const Text(
                        'அறிகுறிகள்',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),//SizedBox
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* இந்நோய் இலைகளை தாக்கும்பொழுது இலையில் பழுப்பு நிற புள்ளிகள் தோன்றி கருகத் தொடங்கும்.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Text
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* புள்ளிகள் பெரிதாகி பாதிக்கப்பட்ட பகுதிகளில் வளையங்கள் காணப்படும்',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* பாதிக்கப்பட்ட திகளை சுற்றியுள்ள பகுதிகள் மஞ்சள் நிறமாகும்.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* இந்நோய் இலையைப் போன்றே நண்டு மற்றும் பழங்களை பாதிக்கிறது',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'மேலாண்மை',

                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* நோய் தாக்கப்பட்ட பயிரின் கழிவுகளை அகற்றி அழித்தல்',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* பயிர் சுழற்சி முறைகளை பின்பற்றுதல்',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '* பின்வரும் பூஞ்சாணக்கொல்லிகளில் ஏதேனும் ஒன்றை தெளிக்கவும்:-',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     1) ஹெக்ஸகோனசோல் 5% SC @ 1மிலி/லிட்டர் (அல்லது)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     2) புரோபிகோனசோல் 25% EC @ 1மிலி லிட்டர் (அல்லது)',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '     3) மெட்டிராம் 70% WG @ 5 கிராம் /லிட்டர்',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      SizedBox(
                        width: 125,

                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                          child: const Padding(
                            padding:  EdgeInsets.all(4),
                            child: Row(
                              children: [
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