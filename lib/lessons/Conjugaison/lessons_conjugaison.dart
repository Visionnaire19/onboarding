import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:onboarding/lessons/Conjugaison/LeVerbe/ToDo.dart';

import 'package:onboarding/lessons/Conjugaison/LeVerbe/Verbes_lessons.dart';
import 'package:onboarding/lessons/Conjugaison/LesTemps/Present.dart';
import 'package:onboarding/values/styles.dart';


class LessonsActivity extends StatefulWidget {
  final String title;

  LessonsActivity({Key key, this.title}) : super(key: key);

  @override
  _LessonsActivityState createState() => _LessonsActivityState();
}

class _LessonsActivityState extends State<LessonsActivity> {

  @override
  Widget build(BuildContext context) {
    //disable full screen mode
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    GestureDetector gamesCard(Widget widget, AssetImage image, String title){
      return  GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => widget)
          );},
        child: Card(
          elevation: 2,
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover
              ),
            ),
            child: Center(child: Text(title, style: TextStyle(color: Colors.white, ),)),
          ),
        ),
      );
    }
    Row rowOfCards ( Widget widget1, AssetImage imageCard1, String titleCard1, Widget widget2, AssetImage imageCard2, String titleCard2, Widget widget3, AssetImage imageCard3, String titleCard3,){

      return Row(
        children: <Widget>[
          Expanded(child: gamesCard(widget1, imageCard1, titleCard1)),
          Expanded(child: gamesCard(widget2, imageCard2, titleCard2)),
          Expanded(child: gamesCard(widget3, imageCard3, titleCard3)),
        ],
      );

    }
    Row rowOfCards1 (Widget widget4, AssetImage imageCard4, String titleCard4 ){

      return Row(
        children: <Widget>[
          Expanded(child: gamesCard(widget4, imageCard4, titleCard4)),
        ],
      );


    }

    FlatButton appBarButton(VoidCallback pressed, String text){

      return FlatButton(
        onPressed: pressed,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 16),),
        splashColor: Colors.amberAccent,
        highlightColor: Colors.amberAccent,
      );
    }
    return Scaffold(
      body: ListView(
          children: <Widget>[
     Padding(
       padding: const EdgeInsets.only(top: 20.0, left: 10.0),
       child: Text("Le verbe",
       style: Styles.subTextStyle,),
     ),
     new Container(
         margin: new EdgeInsets.symmetric(vertical: 8.0),
         height: 2.0,
         width: MediaQuery.of(context).size.width,
         color: new Color(0xfffbc02d)
     ),

     Padding(
       padding: const EdgeInsets.only(top: 10.0),
       child: rowOfCards(ToBe(), AssetImage('assets/calendar.png'), 'To Be',
       ToHave(),AssetImage('assets/calendar.png'), 'To Have',
       ToDo(),AssetImage('assets/calendar.png'), 'To Do'),
     ),

     Padding(
       padding: const EdgeInsets.only(top: 20.0, left: 10.0),
       child: Text("Les temps",
         style: Styles.subTextStyle,),
     ),
     new Container(
         margin: new EdgeInsets.symmetric(vertical: 8.0),
         height: 2.0,
         width: MediaQuery.of(context).size.width,
         color: new Color(0xfffbc02d)
     ),
     Padding(
       padding: const EdgeInsets.only(top: 10.0),
       child: rowOfCards1(Present(), AssetImage('assets/calendar.png'), 'Le Present'),
     ),

    ],
    ),

    );

  }
}
