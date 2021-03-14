import 'package:fitfans/animation.dart';
import 'package:fitfans/constants.dart';
import 'package:fitfans/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;
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

    rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: HomeScreen()));
            }
          });

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController);

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image: 'lib/assets/simone.jpg',
            title: 'Welcome to FIT.FANS',
          ),
          makePage(
            page: 2,
            image: 'lib/assets/94.png',
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
    return Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.3),
            ])),
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
                          FadeAnimation(
                              2,
                              Text(
                                page.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                          Text(
                            '/' + totalPage.toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(
                                1,
                                Text(
                                  title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 170,
                            ),
                            SingleChildScrollView(
                              child: Align(
                                child: Text(
                                  "Start the morning with your health",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: AnimatedBuilder(
                                animation: rippleAnimation,
                                builder: (context, child) => Container(
                                  width: rippleAnimation.value,
                                  height: rippleAnimation.value,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white.withOpacity(.4)),
                                    child: InkWell(
                                      onTap: () {
                                        scaleController.forward();
                                      },
                                      child: AnimatedBuilder(
                                        animation: scaleAnimation,
                                        builder: (context, child) =>
                                            Transform.scale(
                                          scale: scaleAnimation.value,
                                          child: Container(
                                            margin: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]))));
  }
}
