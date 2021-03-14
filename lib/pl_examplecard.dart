import 'package:fitfans/constants.dart';
import 'package:fitfans/premiumcard.dart';
import 'package:fitfans/video.dart';
import 'package:flutter/material.dart';

class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 

           Container(
          color: kThirdColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
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
                    title: "Challenges Nr.1",
                    image: "lib/assets/99.png",
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
                    title: "Challenges Nr.2",
                    image: "lib/assets/95.png",
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
                    title: "Challenges Nr.3",
                    image: "lib/assets/94.png",
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
                    title: "Challenges Nr.4",
                    image: "lib/assets/93.png",
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
                    title: "Challenges Nr.5",
                    image: "lib/assets/92.png",
                    description: "Beschreibung des Videos",
                    
                  ),
                ),
        ],),
      ),
      
     ) );
  }
}