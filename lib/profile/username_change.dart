import 'package:flutter/material.dart';
import 'package:onboarding/MainPage/main_page.dart';
import 'package:onboarding/profile/profile.dart';

class Username extends StatefulWidget{

  State createState() => UsernameChange();
}
class UsernameChange extends State<Username>{
  String _user;
final _usernameInputController = TextEditingController();

raised(){
  _user = Text(_usernameInputController.text).toString();
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget),
  );
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

    TextField(

    keyboardType: TextInputType.text,
      controller: _usernameInputController,
      decoration: new InputDecoration(
        labelText: 'Enter Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)),
      ),
    ),
        Padding(
        padding: EdgeInsets.only(top: 30.0),
        ),
        RaisedButton(onPressed: raised,
          color: Colors.white,
          textColor: Colors.black,
          child: Text('Save'),
        )
      ],
      )
    );
  }
}