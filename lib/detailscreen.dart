import 'package:fitfans/trainscreen.dart';
import 'package:fitfans/url.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './constants.dart';

class DetailsTrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: kThirdColor,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/99.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
                                            color: kFirstColor,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                                Spacer(),
                                                Text(
                                                  "3 Hours",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 50,
                                      width:
                                          MediaQuery.of(context).size.width * 0.8,
                                      decoration: BoxDecoration(
                                        boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
                                        color: kThirdColor,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '16 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: kFirstColor,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Moves',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: '12 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: kFirstColor,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Sets',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: '30 ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: kFirstColor,
                                                  fontWeight: FontWeight.bold),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Min',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Werde Teil der Community!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Du hast Lust draußen zu trainieren, dir fehlt alleine aber die Motivation?"
                        " Dann werde Teil der FIT.FANS Community!"
                        " Unser abwechslungsreiches Outdoor Gruppen Workout besteht aus Laufen,"
                        " Bodyweight Übungen und natürlich einer Menge Spaß!"
                        " Das Trainingskonzept ist so entwickelt, dass JEDER gemäß seinem Fitnesslevel  mitmachen kann!",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                             FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrainScreen())),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
                                  borderRadius: BorderRadius.circular(25),
                                  color: kFirstColor,
                                  border:
                                      Border.all(width: 1, color: kFirstColor),
                                ),
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Center(
                                  child: Text(
                                    "Try NOW",
                                    style: TextStyle(
                                      color: kThirdColor,
                                      fontSize: 18, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Url())),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          5.0, // horizontal, move right 10
          5.0, // vertical, move down 10
        ),
      )
    ],
                                  borderRadius: BorderRadius.circular(25),
                                  color: kFirstColor,
                                ),
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Center(
                                  child: Text(
                                    "Website",
                                    style: TextStyle(
                                      color: kThirdColor,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                           
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
