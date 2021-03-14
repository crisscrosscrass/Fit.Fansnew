import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfans/Videos/video1.dart';

import 'package:fitfans/constants.dart';

import 'package:fitfans/pl2_examplecard.dart';


import 'package:fitfans/premiumcard.dart';
import 'package:fitfans/videodrei.dart';

import 'package:flutter/material.dart';

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
                Container(
                  child: Center(child: Text("Ernährung")),
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
                    image: "lib/assets/food4.png",
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
                    image: "lib/assets/food4.png",
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
                    image: "lib/assets/food4.png",
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
               InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                 InkWell (
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
                color: kFirstColor,
              ),
              title: Text("Videos")),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.star,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.star,
                color: kFirstColor,
              ),
              title: Text("Weights")),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.folder_open,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.folder_open,
                color: kFirstColor,
              ),
              title: Text("Stretching")),
          BubbleBottomBarItem(
              backgroundColor: kFirstColor,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              title: Text("Food"))
        ],
      ),
    );
  }
}
