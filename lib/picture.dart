import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:onboarding/login_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onboarding/MainPage/main_page.dart';
import 'package:onboarding/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImportPicture extends StatefulWidget{
  final String value;

  ImportPicture({Key key, this.value}) : super (key : key);
  
  State createState() => Picture();
}

class Picture extends State<ImportPicture>{

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new MyMainPage()));
    } else {

    }
  }

  @override
  void initState() {
    super.initState();
    checkFirstSeen();

  }

  File image;

  _gotoprofile(){
    Navigator.pushReplacement(context, new
        MaterialPageRoute(builder: (context) => new MyMainPage()));

  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);


    setState(() {
      image = image;
    });
  }




  @override
  
  Widget build(BuildContext context) {
   String text;
   _onChange(){
if(image == null){
  return text = 'Skip' ;
}
else{
  return text = 'Start';
}

   }

    // TODO: implement build
    return
      
    Scaffold(
   body: Container(
     color: Colors.transparent,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[

         Text("Welcome ${widget.value}",
           style: new TextStyle(
             fontFamily: 'Romanica',
             fontSize: 25.0,
             color: Colors.black,
           ),),

        Center(
          child: new Container(
       width: 190.0,
           height: 190.0,
           decoration: new BoxDecoration(
               shape: BoxShape.circle,
               image: new DecorationImage(image: AssetImage('assets/smiley.png') )
           ),

       ),
        ),

         Padding(
           padding: EdgeInsets.only(top: 20.0),
         ),
    Text('Upload a profile picture to personalize your account!',
    style: new TextStyle(
    fontFamily: 'Caesar',
    fontSize: 20.0,
    color: Colors.black,
    ),
    ),
         Padding(
           padding: EdgeInsets.only(top: 40.0),
         ),

       Container(
    width: 300.0,
           height: 300.0,
         decoration: BoxDecoration(
           shape: BoxShape.circle,
         ),
         child: image == null
             ? null
             : new Image.file(image),

       ),

         Padding(
           padding: EdgeInsets.only(top: 40.0),
         ),

         RaisedButton(
           onPressed: getImage,
           color: Colors.blue,
           child: Text('Upload the image'),
         ),

         Container(
           alignment: Alignment.bottomRight,
           child: FlatButton(
             child: Text(_onChange(),
               style: new TextStyle(
                 fontFamily: 'Romanica',
                 fontSize: 20.0,
                 color: Colors.black,
               ),),
             onPressed: _gotoprofile,
           ),
         ),



         ]
           ),





   ),


    );


  }
  
}

Future<bool>  saveImage(File image) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();

}

