import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video9Page extends StatefulWidget {
  Video9Page({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _Video9PageState createState() => _Video9PageState();
}

class _Video9PageState extends State<Video9Page> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  '8-C-oYrIqQw', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: true,
      

      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
              child: 
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.black,
             
            ), 
           
        ));
      
    
  }
}
