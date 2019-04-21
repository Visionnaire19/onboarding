import 'package:flutter/material.dart';
import 'package:onboarding/login_page.dart';

class SignUp extends StatefulWidget{

  State createState() => SignUpPage();
}

class SignUpPage extends State<SignUp> {

  final _usernameInputController = TextEditingController();

  final _emailInputController = TextEditingController();
  final _passwordInputController = TextEditingController();

  bool isValidEmail(String input) {
    final RegExp regex = new RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(input);
  }

  _onCreate() {

  }

  @override

  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(

        child: Form(
          autovalidate: true,

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
                    image: new DecorationImage(image: AssetImage('assets/logo.png') )
                ),

              ),

              Padding(
                padding: EdgeInsets.all(20.0),

              ),





              TextFormField(

                keyboardType: TextInputType.text,
                controller: _usernameInputController,
                validator: (value){
                  if(value.isEmpty){
                    return 'Please add your username';
                  }
                },
                decoration: new InputDecoration(
                  labelText: 'Enter Username',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(40.0),

              ),

              TextFormField(
                validator: (value) => isValidEmail(value) ? null : 'Please enter a valid email address',

                keyboardType: TextInputType.emailAddress,
                controller: _emailInputController,
                decoration: new InputDecoration(
                  labelText: 'Enter Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(40.0),

              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your password';
                  }
                },
                obscureText: true,
                controller: _passwordInputController,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: 'Enter Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),


              Padding(
                padding: EdgeInsets.all(20.0),

              ),

              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())
                  );},
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Sign Up'),
              ),


            ],
          ),
        ),

      ),


    );

  }


}

