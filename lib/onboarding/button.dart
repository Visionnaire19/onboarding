import 'package:flutter/material.dart';
import 'package:onboarding/login_page.dart';
import 'package:onboarding/MainPage/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ButtonSkip extends StatefulWidget{



   State createState() => Button();
}

class Button extends State<ButtonSkip>{

  _afterOnboarding(){
    Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new MyMainPage()));

  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.bottomRight,
      child: FlatButton(onPressed: _afterOnboarding,
          textColor: Colors.white,
          child:
      Text('Skip',
        style: new TextStyle(
          fontFamily: 'Romanica',
          fontSize: 20.0,
          color: Colors.white,
        ),),
    )
    );
  }
}