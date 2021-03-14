
import 'package:flutter/material.dart';


class Premiumcard extends StatefulWidget {
  final String image, title, onTap, description;
  const Premiumcard({
    Key key,
    this.image,
    this.title,
    this.onTap,
    this.description,
    
  }) : super(key: key);

  @override
  _PremiumcardState createState() => _PremiumcardState();
}

class _PremiumcardState extends State<Premiumcard> {

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
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0, // has the effect of softening the shadow
                      spreadRadius:
                          2.0, // has the effect of extending the shadow
                      offset: Offset(
                        7.0, // horizontal, move right 10
                        7.0, // vertical, move down 10
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                  border: Border(
                      left: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      right: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      top: BorderSide(
                        color: Colors.white,
                        width: 3,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.description,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ]),
            
          ),
      
        ],
      ),
    );
  }
}
