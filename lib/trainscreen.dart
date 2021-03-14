
import 'package:fitfans/premiumbereich.dart';
import 'package:fitfans/video.dart';
import 'package:fitfans/videodrei.dart';
import 'package:flutter/material.dart';

import './constants.dart';

import './examplecard.dart';

class TrainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: kThirdColor,
            body: Stack(children: [
              SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/assets/moti7.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
            
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        RichText(
                          text: TextSpan(
                            text: 'Simones\t',
                            style: TextStyle(
                                fontFamily: "Bebas",
                                fontSize: 30,
                                letterSpacing: 5),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Fit.Fans',
                                style: TextStyle(color: kFirstColor),
                              )
                            ],
                          ),
                        ),]))),
                      SingleChildScrollView(
                                              child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                kThirdColor,
                                Colors.transparent,
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.55,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: TextSpan(
                                          text: '   Find ',
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: kFirstColor,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'your Workout',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 230,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "ABS & Core",
                                  image: "lib/assets/food.png",
                                ),
                              ]),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PremiumBereich(),
                                  ),
                                );
                              },
                            ),
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "Bodyweight Workout",
                                  image: "lib/assets/15.png",
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "Bauch Workout",
                                  image: "lib/assets/16.png",
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "Bauch Workout",
                                  image: "lib/assets/19.png",
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "Bauch Workout",
                                  image: "lib/assets/9.png",
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
                            GestureDetector(
                              child: Column(children: [
                                ExampleCard(
                                  title: "Bauch Workout",
                                  image: "lib/assets/9.png",
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
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ])));
  }
}
