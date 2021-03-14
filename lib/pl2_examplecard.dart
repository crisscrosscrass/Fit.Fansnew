


import 'package:fitfans/examplecard.dart';

import 'package:fitfans/playlistcard.dart';


import 'package:fitfans/videodrei.dart';

import 'package:flutter/material.dart';

import './constants.dart';
import 'Videos/video1.dart';

class PlayList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  PlayCard(
                    title: "Challenges",
                    image: "lib/assets/17.png",
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
                  PlayCard(
                    title: "ABS & Core",
                    image: "lib/assets/food.png",
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
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  PlayCard(
                    title: "Warm up routine ",
                    image: "lib/assets/13.png",
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
              SizedBox(height: 50,),
              InkWell(
                child: Column(children: [
                  ExampleCard(
                    title: "Bodyweight Workout",
                    image: "lib/assets/93.png",
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
                  PlayCard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
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
                  PlayCard(
                    title: "Bauch Workout",
                    image: "lib/assets/94.png",
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
                  PlayCard(
                    title: "Bauch Workout",
                    image: "lib/assets/95.png",
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
                  PlayCard(
                    title: "Bauch Workout",
                    image: "lib/assets/99.png",
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
      ),
    );
  }
}
