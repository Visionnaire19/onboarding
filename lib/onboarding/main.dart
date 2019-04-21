import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/onboarding/button.dart';
import 'package:onboarding/login_page.dart';
import 'package:onboarding/MainPage/main_page.dart';
import 'package:onboarding/onboarding/page_dragger.dart';
import 'package:onboarding/onboarding/page_reveal.dart';
import 'package:onboarding/onboarding/pager_indicator.dart';
import 'package:onboarding/onboarding/pages.dart';
import 'package:onboarding/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());}
  );}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>
      {
        'Sign': (BuildContext context) => new SignUp(),
        'Login': (BuildContext context) => new LoginPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new LoginPage()));
    } else {

    }
  }

  @override
  void initState() {
    super.initState();
    checkFirstSeen();

  }

   StreamController<SlideUpdate> slideUpdateStream;
   AnimatedPageDragger animatedPageDragger;

   int activeIndex = 0;
   int nextPageIndex = 0;
   SlideDirection slideDirection = SlideDirection.none;
   double slidePercent = 0.0;

  _MyHomePageState(){
    slideUpdateStream = new StreamController<SlideUpdate>();
    
    slideUpdateStream.stream.listen((SlideUpdate event){
setState(() {
  if(event.updateType == UpdateType.dragging) {
    slideDirection = event.direction;
    slidePercent = event.slidePercent;

    if (slideDirection == SlideDirection.leftToRight){
nextPageIndex = activeIndex - 1;
    }
    else if (slideDirection == SlideDirection.rightToLeft){
nextPageIndex = activeIndex + 1;
    }

    else{
      nextPageIndex = activeIndex;
    }

    nextPageIndex.clamp(0.0, pages.length - 1);
  }
  else if(event.updateType == UpdateType.doneDragging){

    if(slidePercent > 0.5){
animatedPageDragger = new AnimatedPageDragger(
  slideDirection: slideDirection,
  transitionGoal: TransitionGoal.open,
  slidePercent: slidePercent,
  slideUpdateStream: slideUpdateStream,
  vsync: this,

);
    }
    else {
      animatedPageDragger = new AnimatedPageDragger(
          slideDirection: slideDirection,
          transitionGoal: TransitionGoal.close,
          slidePercent: slidePercent,
          slideUpdateStream: slideUpdateStream,
          vsync: this,
      );

      nextPageIndex = activeIndex;

    }
    animatedPageDragger.run();

  }
  else if (event.updateType == UpdateType.animating){
    slideDirection = event.direction;
    slidePercent = event.slidePercent;
  }

  else if (event.updateType == UpdateType.doneAnimating){
    activeIndex = nextPageIndex;

    slideDirection = SlideDirection.none;
    slidePercent = 0.0;

    animatedPageDragger.dispose();

  }

});
    });
  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Stack(
        children: <Widget>[
          new Page(
            viewModel: pages[activeIndex],
            percentVisible: 1.0,
            ),
          new PageReveal(
            revealPercent: slidePercent,
            child: new Page(
              viewModel: pages[nextPageIndex],
              percentVisible: slidePercent,
            ),
          ),
          new PagerIndicator(
           viewModel: new PagerIndicatorViewModel(pages,
              activeIndex,
               slideDirection,
               slidePercent,),
          ),
          new PageDragger(
            canDragLeftToRight: activeIndex > 0,
canDragRightToLeft: activeIndex < pages.length -1,
slideUpdateStream: this.slideUpdateStream,
          ),

          new ButtonSkip(
          ),
      ]

          ),

    );
  }

  }
