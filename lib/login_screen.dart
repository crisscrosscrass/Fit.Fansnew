import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfans/constants.dart';
import 'package:fitfans/premiumbereich.dart';
import 'package:fitfans/register.dart';


import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kThirdColor,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/5.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
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
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign in",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "train and live the new experience of \nexercising"
                                " at home",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                     
                      child: Container(
                         color: kFirstColor,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: kFirstColor),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(child: Text('Login',style: TextStyle(color:kThirdColor ),),)),
                       
                      onPressed: () {
                        auth
                            .signInWithEmailAndPassword(
                                email: _email, password: _password)
                            .then((_) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => PremiumBereich()));
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      
                      child: Container(
                        color: kFirstColor,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: kFirstColor),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(child: Text('Registieren',style: TextStyle(color:kThirdColor),),)),
                  
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Register()));
                      })
                ],
              ),
            ),
          ]),
        ));
  }
}
