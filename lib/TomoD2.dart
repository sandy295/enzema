import 'package:flutter/material.dart';
import 'package:tnau_f/HomeScreen.dart';


class  TomoD2 extends StatefulWidget {
  const TomoD2({Key? key}) : super(key: key);

  @override
  State<TomoD2> createState() => _TomoD2ScreenState();
}

class _TomoD2ScreenState extends State<TomoD2> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('TNAU'),
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
                          backgroundImage: AssetImage("images/5.png"), //NetworkImage
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
                        'GBNV',
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
                        'SYMPTOMS',

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
                          '* Stunted plant growth',
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
                          '* Chlorotic or necrotic rings on leaves',
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
                          '* Thickening of veins and bronzing of young leaves',
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
                          '* Necrotic patches on petiole and stems',
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
                          '* Growing twigs die-back and wilt',
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
                          '* Yellow ringspots with concentric circular markings on fruits',
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
                          '* Disease transmitted by thrips',
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
                          '* Use of healthy seedlings for transplanting',
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
                          '* Soil application of Bacillus subtilis @ 2.5 kg/ha',
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
                          '* Rogue out infected plants upto 45 days of planting',
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
                          '* Install yellow sticky traps @ 12 Nos./ha',
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
                          '* Spray any one of the following insecticides:-',
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
                          '     1) Cyantraniliprole 10.26 OD @ 900 ml/ha (or) ',
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
                          '     2) Thiamethoxam 70 WS @ 300 ml/ha (or) ',
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
                          '     3) Imidacloprid 17.8 SL @ 250 ml/ha ',
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
                        'தக்காளி புள்ளி வாடல் /மொட்டுக் கருகல் நோய்',

                        style: TextStyle(
                          fontSize: 10,
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
                          '* நோய் பாதிக்கப்பட்ட செடிகள் வளர்ச்சி குன்றி காணப்படும்.',
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
                          '* இலைகள் வெளிர் பச்சை புள்ளியமைப்புடன் காணப்படும்.',
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
                          '* இளம் இலைகளில் நரம்பு தடித்து பழுப்பு நிறமாக காணப்படும்.',
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
                          '* இலைக்காம்பு மற்றும் தண்டு பகுதிகளில் கருப்பு நிற திட்டுகள் காணப்படும்.',
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
                          '* செடியின் நுனி வாடி கருகும்.',
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
                          '* பழங்களில் மஞ்சள் நிற வளைப்புள்ளிகள் காணப்படும்.',
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
                          '* இந்நோய் இலைப்பேன் மூலம் பரவுகிறது.',
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
                          '* நோயற்ற தரமான தக்காளி நாற்றுகளை பயன்படுத்தவும்',
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
                          '* விதைகளை பேசில்லஸ் சப்டிலிஸ் உயிர்கொல்லி கலவையுடன் 10கிராம் கிலோ என்ற அனயில் விதை நேர்த்தி செய்யவும்',
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
                          '* பேசில்லஸ் சப்டிலியிகொல்லி கலவையை 2.50லோஎக்டர் என்ற அளவில் மண்யில் இடுதல்.',
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
                          '* பாதிக்கப்பட்ட செடிகளை 45 நாட்களுக்குள் பிடுங்கி அழித்தல்.',
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
                          '* எக்டருக்கு 12 என்ற எண்ணிக்கையில் மஞ்சள் ஒட்டுப் பொறிகளை அமைத்தல்.',
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
                          '* தடுப்பு பயிராக சோளம், மக்காச்சோளம் அல்லது கம்பு பயிரிடவும்.',
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
                          '* பின்வரும் பூச்சிக்கொல்லிகளில் ஏதேனும் ஒன்றை தெளிக்கவும்:-',
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
                          '     1) சையாண்ட்ரணிலிப்ரோல் 10.26 OD @ 900 மிலி/எக்டர் (அல்லது)',
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
                          '     2) தையோமீத்தாக்சம் 70 WS @ 300 மிலி எக்டர் (அல்லது)',
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
                          '     3) இமிடாகுளோப்ரிட்17.8 SL @ 250 மிலி எக்டர்',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ), //Textstyle
                        ),
                      ),
                      //SizedBox
                      SizedBox(
                        width: 125,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen())),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                          child: const Padding(
                            padding:   EdgeInsets.all(4),
                            child: Row(
                              children:   [
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
