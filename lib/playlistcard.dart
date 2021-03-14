import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String image, title, onTap;
  const PlayCard({
    Key key,
    this.image,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
              child: Column(
          children: [
           InkWell(
              borderRadius: BorderRadius.circular(20.0),
              child: Column(children: [
        
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
            ),           SizedBox(
              height: 15,
            ),
                Container( 
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                       
                      width: 100,
                      height: 200,
                   
                      
                    ),
                    
                  ),
                  decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 2.0, // has the effect of softening the shadow
        spreadRadius: 2.0, // has the effect of extending the shadow
        offset: Offset(
          7.0, // horizontal, move right 10
          7.0, // vertical, move down 10
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
                    width: 1,
                    
                ),right: BorderSide(
                    color: Colors.white,
                    width: 1,),bottom:  BorderSide(
                    color: Colors.white,
                    width: 1,),top:  BorderSide(
                    color: Colors.white,
                    width: 1,)
              ),)) ]))]),
      ));
            
              
            
          
      
  }
}
