

import 'package:fitfans/detailscreen.dart';
import 'package:fitfans/drawer.dart';


import 'package:fitfans/premiumbereich.dart';




import 'package:flutter/material.dart';

import './constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: kThirdColor,),
      backgroundColor: kThirdColor,drawer: Drawer(
    child: MainDrawer()
  ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/91.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
                      child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              
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
                      Spacer(),
                      Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "train and live the new experience of \nexercising at home",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
                      ),
                      SizedBox(height: 60),
                      TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsTrain(),
              ),
            ),
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
                  "Try now",
                  style: TextStyle(
                    color: kThirdColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PremiumBereich(),
              ),
            ),
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
                  "Login",
                  style: TextStyle(
                    color: kThirdColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
                      ),
                     
        
                    ],
                  ),
                ),
              ),

          ),
        ],
      ),
    );
  }
}
