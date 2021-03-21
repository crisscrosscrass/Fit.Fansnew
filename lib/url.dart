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
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(children: [
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 30,
                      ),
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
                    SizedBox(height: 50),
                    TextButton(
                        onPressed: _launchURL,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius:
                                    2.0, // has the effect of softening the shadow
                                spreadRadius:
                                    2.0, // has the effect of extending the shadow
                                offset: Offset(
                                  5.0, // horizontal, move right 10
                                  5.0, // vertical, move down 10
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(
                            child: Text(
                              'Fit.Fans - Webseite',
                              style: TextStyle(
                                color: kThirdColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    )
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
