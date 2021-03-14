import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video2Page extends StatefulWidget {
  Video2Page({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _Video2PageState createState() => _Video2PageState();
}

class _Video2PageState extends State<Video2Page> {
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
