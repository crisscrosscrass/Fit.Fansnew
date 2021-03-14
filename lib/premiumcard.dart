import 'package:fitfans/constants.dart';
import 'package:flutter/material.dart';

class Premiumcard extends StatelessWidget {
  final String image, title, onTap, initialVideoId;
  const Premiumcard({
    Key key,
    this.image,
    this.title,
    this.onTap,
    this.initialVideoId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20.0),
            child: Column(children: [
                   SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),           SizedBox(
            height: 15,
          ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                  
                  
                ),
                decoration: BoxDecoration( boxShadow: [
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
                  borderRadius: BorderRadius.only(
                    
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight:  Radius.circular(15.0),
              topRight:  Radius.circular(15.0)),
              
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),    border: Border(
              left: BorderSide(
                  color: Colors.white,
                  width: 3,
                  
              ),right: BorderSide(
                  color: Colors.white,
                  width: 3,),bottom:  BorderSide(
                  color: Colors.white,
                  width: 3,),top:  BorderSide(
                  color: Colors.white,
                  width: 3,)
            ), 
            
                ),
              
              ),
          
            ]),
            
          ),
       
         
        ],
      ),
    );
  }
}
