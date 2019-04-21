import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onboarding/profile/constants.dart';
import 'package:onboarding/MainPage/main_page.dart';
import 'package:onboarding/profile/username_change.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Profile extends StatefulWidget{
  final String value;

  Profile({Key key, this.value}) : super (key : key);


  State createState() =>  ProfileState();
}

class ProfileState extends State<Profile>{

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
PopupMenuButton<String>(
  onSelected: choiceAction,
    itemBuilder: (BuildContext context){
    return Constants.choices.map((String choice){
      return PopupMenuItem<String>(
        value: choice,
child: Text(choice),
      );

    }).toList();

    })
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Center(
            child: ClipOval(

              child: _image == null
                  ?new Text('IMAGE')
                  :new Image.file(_image, height: 200,
                width: 200,
                fit: BoxFit.cover,),


            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Text('${widget.value}',
              style: TextStyle(
                fontFamily: 'Aressence',
                fontSize: 45.0,
                color: Colors.black,
              ),
            ),),

          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Progress',
                        style: TextStyle(
                            fontFamily: 'Aressence',
                            fontSize: 25.0,
                            color: Colors.black
                        ),)
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: new LinearPercentIndicator(
                        backgroundColor: Colors.grey,
                        width: MediaQuery.of(context).size.width - 50,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 20.0,
                        center: Text('Reading',
                          style: TextStyle(
                              fontFamily: 'Aressence',
                              fontSize: 25.0,
                              color: Colors.black
                          ),),
                        trailing: Text('20%',
                          style: TextStyle(
                              fontFamily: 'Aressence',
                              fontSize: 25.0,
                              color: Colors.black
                          ),),
                        linearStrokeCap: LinearStrokeCap.butt,
                        progressColor: Colors.lightBlue,
                        percent: 0.2
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: new LinearPercentIndicator(
                        backgroundColor: Colors.grey,
                        width: MediaQuery.of(context).size.width - 50,
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 20.0,
                        center: Text('Writing',
                          style: TextStyle(
                              fontFamily: 'Aressence',
                              fontSize: 25.0,
                              color: Colors.black
                          ),),
                        trailing: Text('20%',
                          style: TextStyle(
                              fontFamily: 'Aressence',
                              fontSize: 25.0,
                              color: Colors.black
                          ),),
                        linearStrokeCap: LinearStrokeCap.butt,
                        progressColor:
                        Colors.lightBlue,
                        percent: 0.2
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: new LinearPercentIndicator(
                      backgroundColor: Colors.grey,
                      width: MediaQuery.of(context).size.width - 50,
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20.0,
                      center: Text('Listening',
                        style: TextStyle(
                            fontFamily: 'Aressence',
                            fontSize: 25.0,
                            color: Colors.black
                        ),),
                      trailing: Text('20%',
                        style: TextStyle(
                            fontFamily: 'Aressence',
                            fontSize: 25.0,
                            color: Colors.black
                        ),),
                      linearStrokeCap: LinearStrokeCap.butt,
                      progressColor:
                      Colors.lightBlue,
                      percent: 0.2,
                    ),
                  ),


                ],
              ),
            ),
          )




        ],
      ),
    );
  }
  void choiceAction(String choice){
    if(choice == Constants.Upload){
      getImage();
    }
else if(choice == Constants.Username){
  Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new Username()));
}
  }
}

