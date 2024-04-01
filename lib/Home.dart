import 'package:flutter/material.dart';
import 'package:tnau_f/HomeScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
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
        title: const Text('HOME'),
      ),
      body: SingleChildScrollView(
        child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8),
                 child :Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage("images/2.png"),
                                 
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              "EnzemaDetect",
                              style: TextStyle(fontSize: 25,color: Colors.blue),
                            ),
                            const SizedBox(height: 22),
                            Text(
                              '         A cutting-edge mobile app designed to empower farmers with the foresight to protect their crops from devastating diseases',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const ListTile(
                              leading: Icon(Icons.check),
                              title: Text('Early Detection'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.check),
                              title: Text('Sustainable '),
                            ),
                            const ListTile(
                              leading: Icon(Icons.check),
                              title: Text('Increased Yields'),
                            ),
                            const SizedBox(height: 28),
                            Text(
                              'Contact Us:',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            const ListTile(
                              leading: Icon(Icons.location_on),
                              title: Text('SREC'),
                              subtitle: Text('Coimbatore-641022'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.phone),
                              title: Text('(+91)75300 89996'),
                            ),
                            const ListTile(
                              leading: Icon(Icons.email),
                              title: Text('infooooooo@srec.ac.in'),
                            ),
                            

                          ],
                        ),
                      ),
                    ),

            ),
      )

    );
  }
}