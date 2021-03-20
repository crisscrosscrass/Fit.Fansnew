
import 'package:fitfans/constants.dart';
import 'package:fitfans/detailscreen.dart';
import 'package:fitfans/homescreen.dart';

import 'package:fitfans/premiumbereich.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: kFirstColor,
      )));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 5;


  void _onScroll() {}
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    _pageController = PageController(initialPage: 0);

   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'lib/assets/78.jpg',
            title: 'FIT.FANS',
          ),
          makePage(
            page: 2,
            image: 'lib/assets/moti7.png',
            title: "Training",
          ),
          makePage(
            page: 3,
            image: 'lib/assets/food3.png',
            title: 'Ernährung',
          ),
          makePage(
          page: 4, 
          image: 'lib/assets/moti8.png', 
          title: 'Find \nYour \nSelf'),
          makePage(
          page: 5, 
          image: 'lib/assets/motiv10.png', 
          title: '  Create \nBeautiful \nMoments'),
        ],
      ),
    );
  }

  Widget makePage({image, title, page}) {
    return Stack(
          children:[ Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
              decoration: BoxDecoration(
              
              ),
              child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            
                                Text(
                                  page.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Align(
                            alignment: Alignment.topCenter,
                            
                                  child: 
                            Text(
                              '/' + totalPage.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                                 ) ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                                                      child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                 RichText(
                text: TextSpan(
                  text: 'Simones\t',
                  style: TextStyle(
                      fontFamily: "Bebas", fontSize: 60,fontWeight: FontWeight.normal, letterSpacing: 5),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Fit.Fans',
                      style: TextStyle(color: kFirstColor),
                    )
                  ],
                ),
              ),
                                





                                SizedBox(
                                  height: 170,
                                ),
                              
                             
                              ]),
                          ),
                              ),
                                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start Today",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Training and Health with Fit.Fans",
                            style: TextStyle(color: Colors.white),
                          ),
                              TextButton(
                           
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
     color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 3, color: Colors.white),
              
              ),
              height: 50,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Center(
                child: Text(
                  "Start NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
                      ),
                      SizedBox(height: 20),
                      
                           
                            ],
                          ),
                        ),
                      
           ])) ))]);
  }
}
