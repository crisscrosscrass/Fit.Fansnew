import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDrei extends StatefulWidget {
  VideoDrei({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VideoDreiState createState() => _VideoDreiState();
}

class _VideoDreiState extends State<VideoDrei> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'Z_xBd4D5WL8', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: true,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
