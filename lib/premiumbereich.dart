import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfans/Videos/video1.dart';
import 'package:fitfans/Videos/video2.dart';
import 'package:fitfans/constants.dart';

import 'package:fitfans/premiumcard.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
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
                    title: "Workout Nr.1",
                    image: "lib/assets/1.png",
                    initialVideoId: "'8-C-oYrIqQw'",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "BWorkout Nr.2",
                    image: "lib/assets/2.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.3",
                    image: "lib/assets/3.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.4",
                    image: "lib/assets/4.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.5",
                    image: "lib/assets/5.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.6",
                    image: "lib/assets/6.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.7",
                    image: "lib/assets/7.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.8",
                    image: "lib/assets/8.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.9",
                    image: "lib/assets/9.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.10",
                    image: "lib/assets/10.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.11",
                    image: "lib/assets/11.png",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Video2Page(),
                      ),
                    );
                  },
                  child: Premiumcard(
                    title: "Workout Nr.12",
                    image: "lib/assets/12.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.13",
                    image: "lib/assets/13.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.14",
                    image: "lib/assets/14.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.15",
                    image: "lib/assets/15.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.16",
                    image: "lib/assets/16.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.17",
                    image: "lib/assets/17.png",
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Premiumcard(
                    title: "Workout Nr.18",
                    image: "lib/assets/18.png",
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
                    title: "Workout Nr.19",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.20",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.21",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.22",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.23",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.24",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.25",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.26",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.27",
                    image: "lib/assets/13.png",
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
                    title: "Workout Nr.28",
                    image: "lib/assets/13.png",
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
                SizedBox(height: 30),
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
                    image: "lib/assets/90.png",
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
                    image: "lib/assets/89.png",
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
                    image: "lib/assets/85.png",
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
                    image: "lib/assets/87.png",
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
