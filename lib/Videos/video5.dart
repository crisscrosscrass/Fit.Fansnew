import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video5Page extends StatefulWidget {
  Video5Page({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _Video5PageState createState() => _Video5PageState();
}

class _Video5PageState extends State<Video5Page> {
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
