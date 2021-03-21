import 'dart:ui';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfans/Videos/video1.dart';
import 'package:fitfans/constants.dart';
import 'package:fitfans/pdf.dart';
import 'package:fitfans/pl2_examplecard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fitfans/premiumcard.dart';
import 'package:fitfans/videodrei.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class PremiumBereich extends StatefulWidget {
  final User user;

  const PremiumBereich({Key key, this.user}) : super(key: key);
  @override
  _PremiumBereichState createState() => _PremiumBereichState();
}

class _PremiumBereichState extends State<PremiumBereich> {
  int currentIndex = 0;
 
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  String assetPDFPath = "";
  String urlPDFPath = "";

  @override
  void initState() {
    super.initState();

    getFileFromAsset("lib/assets/1.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });

    getFileFromUrl("").then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/1.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/1.pdf");

      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:kThirdColor ,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Premiumbereich", style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white, fontSize: 25),),
        ),
      ),
      body: <Widget>[
        Container(
          color: kThirdColor,
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/moti7.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
                      child: Container(
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: 'Simones\t',
                  style: TextStyle(
                      fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Fit.Fans',
                      style: TextStyle(color: kFirstColor),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
             
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Challenges",
                    image: "lib/assets/17.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "ABS & Core",
                    image: "lib/assets/food.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayList2(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Warm up routine ",
                    image: "lib/assets/13.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoDrei(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bodyweight Workout",
                    image: "lib/assets/93.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/95.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PDFView(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/99.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
            ],
                      ) )),
          ),
        ],
          )),
        Container(
          color: kThirdColor,
          child:  Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/93.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
                      child: Container(
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(
                  text: 'Simones\t',
                  style: TextStyle(
                      fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Fit.Fans',
                      style: TextStyle(color: kFirstColor),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
             
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Challenges",
                    image: "lib/assets/17.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                        
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage()));
                        }
                    
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "ABS & Core",
                    image: "lib/assets/food.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlayList2(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Warm up routine ",
                    image: "lib/assets/13.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoDrei(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bodyweight Workout",
                    image: "lib/assets/93.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/95.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  Premiumcard(
                    title: "Bauch Workout",
                    image: "lib/assets/99.png",
                     description: "Beschreibung des Videos",
                  ),
                ]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoPage(),
                    ),
                  );
                },
              ),
            ],
                      ) )),
          ),
        ],
          )),
        Container(
          color: kThirdColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Center(child: Text("Stretching")),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: kThirdColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
            
                
                InkWell(
                  onTap: () {
                        if (assetPDFPath != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PdfViewPage(path: assetPDFPath)));
                        }
                      },
                  child: Premiumcard(
                    title: "Ernährungs Guide",
                    image: "lib/assets/food.png",
                    description: "  Ernährungs - Guide für deine   ausgewogene Ernährung. Nur durch die   richtige Ernährung erreichst du dein Ziel,   ob Abnehmen oder Muskelmasse   zulegen, die Ernährung ist das A.O.",
                  ),
                ),
             
              
                  InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Gewichte",
                    image: "lib/assets/13.png",
                    description: "Beschreibung des Videos",
                  ),
                ),
                
                
                ],
            ),
          ),
        ),
      ][currentIndex],
      bottomNavigationBar: BubbleBottomBar(
        backgroundColor: kThirdColor,
        opacity: 0,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.video_collection,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.video_collection,
                color: Colors.white,
              ),
              title: Text("Videos", style: TextStyle( color: Colors.white,),)),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.star,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.star,
                color: Colors.white,
              ),
              title: Text("Weights", style: TextStyle( color: Colors.white,),)),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
               color: Colors.white,
              ),
              title: Text("Stretching", style: TextStyle( color: Colors.white,),)),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
               color: Colors.white,
              ),
              title: Text("Food", style: TextStyle( color: Colors.white,),))
        ],
      ),
    );
  }
}
