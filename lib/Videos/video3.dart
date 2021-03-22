import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video3Page extends StatefulWidget {
  Video3Page({Key key, this.title, }) : super(key: key);

  final String title;


  @override
  _Video3PageState createState() => _Video3PageState();
}

class _Video3PageState extends State<Video3Page> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId:  'MdpjfjQvXFo', // id youtube video
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
