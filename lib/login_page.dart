import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding/picture.dart';
import 'package:onboarding/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override

  State createState() =>  LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen || _formKey.currentState.validate()) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new ImportPicture()));
    } else {


    }
  }
  @override
  void initState() {
    super.initState();
    checkFirstSeen();

  }

  String _user;
  String _email ;
  String _password;

  var _usernameInputController = TextEditingController();

  var _formKey = GlobalKey<FormState>();


  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();



  bool isValidEmail(String input) {
    final RegExp regex = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }

  _onForgot() {

  }

  _onSign() {
    Navigator.of(context).pushNamed('Sign');
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(

        child: Form(
          autovalidate: true,
          key: _formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        image: AssetImage('assets/logo.png'))
                ),

              ),


              Hero(
                tag: 'logo',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset('assets/logo.png', package: 'assets'),
                ),
              ),

              TextFormField(

                keyboardType: TextInputType.text,
                controller: _usernameInputController,

                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please add your username';
                  }
                },
                decoration: new InputDecoration(
                  labelText: 'Enter Username',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onSaved: (value) {
                  _user = value;
                },
              ),
              Padding(
                padding: EdgeInsets.all(40.0),

              ),

              TextFormField(
                validator: (value) =>
                isValidEmail(value)
                    ? null
                    : 'Please enter a valid email address',

                keyboardType: TextInputType.emailAddress,
                controller: _emailInputController,
                decoration: new InputDecoration(
                  labelText: 'Enter Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),

              ),

              Padding(
                padding: EdgeInsets.all(40.0),
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please add your password';
                  }
                },
                obscureText: true,
                controller: _passwordInputController,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: 'Enter Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                ),
                onSaved: (value) {
                  _password = value;
                },
              ),


              Padding(
                padding: EdgeInsets.all(20.0),

              ),

              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _user = Text(_usernameInputController.text).toString();
                    Navigator.pushReplacement(context, new
                        MaterialPageRoute(builder: (context) => new ImportPicture(value: _usernameInputController.text))
                    );

                  }
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Login'),
              ),

              FlatButton(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
                onPressed: _onForgot,

              ),

              FlatButton(
                child: Text(
                  'Your first time? Sign up!',
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
                onPressed: _onSign,

              )
            ],
          ),
        ),

      ),


    );
  }


}