import 'package:fitfans/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/13.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: kThirdColor.withOpacity(0.7),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
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
                            "Information",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Alle Informationen findest du auf meiner \nFit.Fans WEBSITE",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 80),
                   RaisedButton(
                        color: kFirstColor,
                        onPressed: _launchURL,
                        
                          
                          
                            child: Text(
                              'Fit.Fans - Webseite',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        
                      
                    
                  ])))
        ]));
  }
}

_launchURL() async {
  const url = 'https://www.fitfans.net/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
