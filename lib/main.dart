import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isplaying = false;
  bool togglevalue = false;
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30.0,
    ),
    Icon(
      Icons.error_outline,
      size: 30.0,
    ),
  ];
  int index = 0;
  late final AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Transform(
              transform: Matrix4.translationValues(1.0, 0.0, 0.0),
              child: Text(
                'Into the cosmos',
                style: TextStyle(
                  fontFamily: 'BornStrong',
                  fontSize: 29.0,
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                iconSize: 32.0,
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: mySearchDelegate(),
                  );
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Align(
                                  alignment: Alignment(-0.5, -0.98),
                                  child: Text(
                                    ' Discover:',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 80.0,
                                      color: Color.fromARGB(255, 238, 181, 9),
                                    ),
                                  )),
                            )
                          ],
                        )),
                    Container(
                      child: ElevatedButton.icon(
                        onPressed: () => _audioCache.play('1.mp3'),
                        label: Text(
                            'Play music for a more interactive experience:'),
                        icon: const Icon(Icons.volume_up),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  ' The milky way:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image1()));
                              },
                              child: Image.asset(
                                'assets/1.jpg',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  The Andromeda galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image2()));
                              },
                              child: Image.asset(
                                'assets/2.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  ' Whirpool galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image3()));
                              },
                              child: Image.asset(
                                'assets/3.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  NGC 6753 Galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image4()));
                              },
                              child: Image.asset(
                                'assets/4.jpg',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Large Magellanic Cloud:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image5()));
                              },
                              child: Image.asset(
                                'assets/5.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy Hockey Stick:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image6()));
                              },
                              child: Image.asset(
                                'assets/6.webp',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 4248:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image7()));
                              },
                              child: Image.asset(
                                'assets/7.webp',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 2500:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image8()));
                              },
                              child: Image.asset(
                                'assets/8.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy IC342:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image9()));
                              },
                              child: Image.asset(
                                'assets/9.jpg',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxia ESO 486-21:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image10()));
                              },
                              child: Image.asset(
                                'assets/10.webp',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Cigar Galaxy or Messier 82:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image11()));
                              },
                              child: Image.asset(
                                'assets/11.jpg',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 4424:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image12()));
                              },
                              child: Image.asset(
                                'assets/12.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy RX J1140.1+0307:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image13()));
                              },
                              child: Image.asset(
                                'assets/13.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Molinete Galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image14()));
                              },
                              child: Image.asset(
                                'assets/14.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy IC 5201:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image15()));
                              },
                              child: Image.asset(
                                'assets/15.jpg',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 4388:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image16()));
                              },
                              child: Image.asset(
                                'assets/16.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Hat Galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image17()));
                              },
                              child: Image.asset(
                                'assets/17.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy IC 3583:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image18()));
                              },
                              child: Image.asset(
                                'assets/18.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 4696:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image19()));
                              },
                              child: Image.asset(
                                'assets/19.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Galaxy NGC 3274:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image20()));
                              },
                              child: Image.asset(
                                'assets/20.webp',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                                alignment: Alignment(-0.9, -0.9),
                                child: Text(
                                  '  Sunflower Galaxy:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'BornStrong',
                                      fontSize: 25.0,
                                      color: Colors.orange),
                                )),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.5),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(22.0),
                            child: RawMaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => image21()));
                              },
                              child: Image.asset(
                                'assets/21.png',
                                fit: BoxFit.fill,
                                height: 250,
                                width: 380,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.black),
            ),
            child: CurvedNavigationBar(
              color: Colors.white,
              buttonBackgroundColor: Colors.orange,
              items: items,
              index: index,
              onTap: (int currentIndex) {
                if (currentIndex == 1)
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutme()));
                if (currentIndex == 0)
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
              },
              height: 50.0,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
            ),
          ),
        );
      }),
    );
  }
}

class image1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/milky.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 1100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'The milky-way:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The Milky Way is our home galaxy. It contains over 200 billion stars, including our Sun. The Milky Way has a diameter of about 170,000 or 200,000 light years, and is a barred spiral galaxy. The idea that the Milky Way is made of stars goes back to the Ancient Greek philosopher Democritus. The Milky Way has three main parts: a disk, where the Solar System is, a bulge at the core, and an outer halo all around it. Although the word "disk" suggests it is flat, the Milky Way is actually not quite flat. It is slightly warped and twisted. This galaxy belongs to the Local Group of three large galaxies and over 50 smaller galaxies. The Milky Way is one of the largest galaxies in the group, second to the Andromeda Galaxy. Its closest neighbour is the Canis Major Dwarf Galaxy, which is about 25,000 light years away from the Earth. The Andromeda Galaxy is moving towards the Milky Way Galaxy, and will collide with it in about 3.75 billion years. The Andromeda Galaxy moves with a speed of about 1,800 kilometres per minute.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/andromeda.jpg'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 980.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'The Andromeda galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The Andromeda galaxy is the nearest spiral galaxy to the Milky Way, our galaxy. Andromeda is sometimes called Messier 31, M31 or NGC 224 by astronomers. It is about 2.6 million light years away from us. In other words, we see it as it was 2.6 million years ago. The galaxy looks like a dim, fuzzy star to the naked eye: We can only see the central part through a telescope. Andromeda is named after the princess in Greek mythology called Andromeda (Ανδρομέδα). Andromeda is the largest galaxy of the Local Group, which consists of the Andromeda galaxy, the Milky Way galaxy, the Triangulum galaxy, and about 30 other smaller galaxies. Although the largest, Andromeda may not be the most massive. Recent findings suggest that the Milky Way contains more dark matter and may be the most massive in the group.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/whirpool.jpg'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Whirlpool Galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The Whirlpool Galaxy, also known as Messier 51a, M51a, and NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus.It lies in the constellation Canes Venatici, and was the first galaxy to be classified as a spiral galaxy. Its distance is 31 million light-years away from Earth. The galaxy and its companion, NGC 5195, are easily observed by amateur astronomers, and the two galaxies may be seen with binoculars. The Whirlpool Galaxy has been extensively observed by professional astronomers, who study it to understand galaxy structure (particularly structure associated with the spiral arms) and galaxy interactions.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G4.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'NGC 6753 Galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'This image captured by the NASA/ESA Hubble Space Telescope is a colourful whirl called NGC 6753: the blue explosions in the spiral arms are regions filled with young stars that shine brightly in ultraviolet light, while the redder areas represent older stars. This galaxy is 150 million light-years away from Earth. According to astronomers, it is one of only two known spiral galaxies, large enough and close enough to allow detailed observations of its crowns. They are very faint, emitting in X-rays, hence they are extremely difficult to detect.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G5.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Large Magellanic Cloud:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The Large Magellanic Cloud is a dwarf galaxy, also a member of the Local Group. It is 160,000 light-years from Earth; it is so close that it is visible to the naked eye as a faint object in the Earths southern hemisphere located between the constellations of Dorado and Mensa. The Portuguese explorer Fernando de Magallanes was the first to discover the existence of this galaxy, hence its name.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G6.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy Hockey Stick:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The protagonist of this NASA / ESA Hubble Space Telescope image is a galaxy known as NGC 4656 or galaxy hockey stick. It is located in the constellation Canes Venatici. Although its name is confusing due to this partial view, the fact is that the galaxy has the shape of an elongated and deformed stick, which extends through space until rolled up at one end to form a surprising imitation of a celestial hockey stick. This unusual shape is due to an interaction between NGC 4656 and a pair of near neighbours, the NGC 4631 and the NGC 4627. These galactic interactions can completely transform a celestial object, displacing and deforming its gas, stars and dust into forms as strange and beautiful as this one.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G7.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 4248:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'NGC 4248 is a spiral galaxy located in the constellation of the Canes Venatici, about 25 million light-years away from Earth. In this image, captured by the Wide Field Camera 3 of the NASA/ESA Hubble Space Telescope, we see a beautiful group of glowing gas, dark dust and bright stars: the spiral galaxy NGC 4248. ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G8.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 2500:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Discovered by British astronomer William Herschel more than 200 years ago, the galaxy NGC 2500 is about 30 million light years from Earth in the northern constellation Lynx. As this NASA / ESA Hubble Space Telescope image shows NGC 2500 is a particular type of spiral galaxy known as a barred spiral, in which its faint arms swirl from a bright, elongated core. This galaxy is still actively forming new stars, although this is a somewhat uneven process because as we can see in this image, the upper half of the galaxy hosts many more star-forming regions than the lower half (much fainter).',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G9.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy IC342:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Although the galaxy IC 342 is very bright, it is near the equator of the galactic disk of the Milky Way, where the sky is filled with dark cosmic gas, stars and dark dust; so to see this intricate spiral structure, astronomers must look through a large amount of material contained within our own galaxy, which is not easy at all. Hence it is nicknamed the hidden galaxy. It is 10.7 million light years from the Milky Way. ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G10.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxia ESO 486-21:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'NASA/ESA Hubble Space Telescope has captured this image of the galaxy known as ESO 486-21: a spiral galaxy, albeit with a somewhat irregular and ill-defined structure, located about 30 million light-years away from Earth. This cosmic object is in the middle of the process of forming new stars (in the large clouds of gas and pinkish dust in the image).',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G11.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 760.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Cigar Galaxy or Messier 82:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'There are approximately 51 galaxies in the local Group, as the Cigar galaxy is one of the most prominent along with Andromeda or the Great Magellanic Cloud. It is an elongated and narrow irregular galaxy located in the constellation of the Ursa Major about 12 million light years away from Earth. It has a high volume of star formation in the centre, with a formation rate of 10 solar masses per year, and a size of 500 parsecs. A supernova is produced every 10 years.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G12.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 4424:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The great majority of cosmic objects that appear in astronomical catalogues are given little poetic names based on the order of their discovery, such as some of the galaxies that we have already visited in this photo gallery. In this Hubble space telescope image, the largest of the galaxies is NGC 4424. Just below is LEDA 213994, which refers to the extragalactic Lyon-Meudon (LEDA) database, much more modern than NGC. Leda, according to Greek mythology, was one of the women seduced by Zeus. ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G13.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy RX J1140.1+0307:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The beautiful spiral galaxy visible in the centre of the image captured by the NASA/ESA Hubble telescope is known as RX J1140.1 + 0307, a galaxy located in the constellation Virgo that has curious qualities. At first glance, it appears to be a normal spiral galaxy, much like the Milky Way, but appearances are deceptive. RX J1140.1+0307 contains a great enigma. The galaxy has in its centre one of the black holes of smaller mass known of all those that reside in luminous galactic nuclei. Scientists are puzzled because the calculations about its mass do not match those about its other characteristics.  ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G14.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Molinete Galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Located 25 million light years away from Earth in the constellation of the Great Bear, the Molinete galaxy or NGC 5457, is one of the largest galaxies in our Milky Way neighbourhood (more than twice the diameter of our galaxy). One of its curiosities is that it does not seem to have a black hole in its centre',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G15.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy IC 5201:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'More than a century after the discovery in 1900 of galaxy IC 5201, is still of interest to astronomers. It is more than 40 million light-years away from Earth, in the constellation The Crane. This galaxy, like most of the spiral galaxies we see in the Universe, including the Milky Way, has a barrier of stars that crosses its centre.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G16.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 4388:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The constellation Virgo hosts many galaxies, one of which is NGC 4388, which is about 60 million light years away from Earth. According to observations captured by NASA/ESAs Hubble Space Telescope, this galaxy is undergoing a transformation and has acquired a somewhat confusing identity, as the outside of the galaxy looks smooth but its centre shows noticeable dust lines limited by two symmetrical spiral arms, emerging from the galaxys resplendent nucleus. Despite this confusion, NGC 4388 is classified as a spiral galaxy. ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G17.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Hat Galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'The Sombrero galaxy is about 28 million light-years away from Earth in the constellation Virgo. The reasons why this galaxy looks like a hat are: the unusually large central bulge of stars, and the dark, prominent lines of dust appearing on a disk that we see almost by song. The diffuse brightness of the central bulb is also due to billions of ancient stars.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G18.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy IC 3583:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Thanks to new observations from the NASA/ESA Hubble Space Telescope, astronomers have discovered the intricate structure of the galaxy NGC 4696 in more detail than ever before. The elliptical galaxy, located in the constellation Centaurus, is a cosmic rarity with a bright nucleus wrapped in a system of dark, spiral-shaped filaments.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G19.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 4696:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Thanks to new observations from the NASA/ESA Hubble Space Telescope, astronomers have discovered the intricate structure of the galaxy NGC 4696 in more detail than ever before. The elliptical galaxy, located in the constellation Centaurus, is a cosmic rarity with a bright nucleus wrapped in a system of dark, spiral-shaped filaments.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G20.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Galaxy NGC 3274:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'In this NASA/ESA Hubble Space Telescope image, we see the spiral galaxy NGC 3274 discovered in 1783 by astronomer William Herschel. It is a relatively weak galaxy located more than 20 million light years away from Earth in the constellation Leo. This image also shows galaxy PGC 213714 in the upper right-hand corner, farther away from Earth.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class image21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Image.asset('assets/G21.webp'),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            width: 420.0,
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Column(
              children: [
                Container(
                  child: Align(
                    alignment: Alignment(-0.1, -0.96),
                    child: Text(
                      'Sunflower Galaxy:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BornStrong',
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 238, 181, 9),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: FavoriteButton(
                    isFavorite: false,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
                Container(
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Formally known as Messier 63, the sunflower galaxy seems to belong to the repertoire of works by the great Vincent Van Gogh. This cosmic beauty has bright, sinuous arms formed by newly formed blue and white giant stars. It was discovered by Pierre Méchain in 1779 and is 27 million light years away from Earth in the constellation of Canes Venaciti (hunting dogs).',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}

class mySearchDelegate extends SearchDelegate {
  List<String> Suggestions = [
    'The milky way',
    'The andromeda galaxy',
    'Whirpool galaxy',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];
    for (var fruit in Suggestions) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var results = matchquery[index];
        return ListTile(
            title: Text(results),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => image1())));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var fruit in Suggestions) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var results = matchquery[index];
        return ListTile(
            title: Text(results),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => image1())));
      },
    );
  }
}

class aboutme extends StatefulWidget {
  const aboutme({Key? key}) : super(key: key);

  @override
  State<aboutme> createState() => _aboutmeState();
}

class _aboutmeState extends State<aboutme> {
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30.0,
    ),
    Icon(
      Icons.error_outline_rounded,
      size: 30.0,
    ),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Into the cosmos',
            style: TextStyle(
              fontFamily: 'BornStrong',
              fontSize: 29.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child : Column(
          children: [
            Stack(
                        clipBehavior: Clip.none,
            alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 77),
                      child: Image.asset(
                        'assets/cover.jpg',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                                  Positioned(
                  top: 135,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(
                        'https://scontent.ftun2-2.fna.fbcdn.net/v/t1.6435-9/118794223_1242329786113429_1517231692863061171_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=Genoa3vkrikAX_6ZUQj&_nc_ht=scontent.ftun2-2.fna&oh=00_AT9JNDpDAVi_BELUT94z4b_LEUC1FRp1q-3iVoJ0KpUBsQ&oe=631CA24D'),
                  )
                  ),
                  ],
                  
 
              ),
               Container(
                  child: Text(
                    'Chadi kammoun',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'BornStrong',
                      fontSize: 25.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'ISIMM student',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromARGB(255, 47, 46, 46),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.linkedin, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.linkedin.com/in/chadi-kammoun')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.behance, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.behance.net/chadi-kammoun')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.instagram, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.instagram.com/chadikammoun/')),
                    ),
                    SizedBox(width: 12),
                    Container(
                      child: InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            child: Center(
                                child:
                                    Icon(FontAwesomeIcons.facebook, size: 32)),
                          ),
                          onTap: () => launchUrlString(
                              'https://www.facebook.com/chadii6/')),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                  child: Container(
                    child: Align(
                      alignment: Alignment(-0.87, 0),
                      child: Text(
                        'About:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'BornStrong',
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 420,
                  height: 450,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      'a higher institute of mathematics and computer science student. '
                      'Cosmos features more than 20 galaxies , each equipped with a description and a real life image  , it includes a favorite button and a music button that helps the user to have a more interactive experience',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
          ],
          
        ),
          
         
      
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        child: CurvedNavigationBar(
          color: Colors.white,
          buttonBackgroundColor: Colors.orange,
          items: items,
          index: index,
          onTap: (int currentIndex) {
            if (currentIndex == 0)
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            if (currentIndex == 1)
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aboutme()));
          },
          height: 50.0,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
