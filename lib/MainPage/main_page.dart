import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding/MainPage/app_bar_content.dart';
import 'package:onboarding/profile/profile.dart';

class MyMainPage extends StatefulWidget {

  final String title;
  MyMainPage({Key key, this.title}) : super(key: key);

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

//TODO add other parameters depending
RaisedButton navigationDrawerButtons( String text,AssetImage image){

  return RaisedButton(
    onPressed: null,
    child: Container(
      width: 400,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        image: DecorationImage(
          //TODO make sure to change the image with the background and suburb.
          //TODO Round the borders so it is nice.
            image: image,
            fit: BoxFit.cover
        ),
      ),
      child: Center(child: Text(text, style: TextStyle(color: Colors.white, ),)),
    ),
    elevation: 2,

  );
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Training'),
    TabBarContent(),
    Text('Index 2: Performance'),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    //disable full screen mode
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Training')),
          //TODO change the icon to fit training aspect. Same for others
          BottomNavigationBarItem(
              icon: Icon(Icons.apps), title: Text('Content')),
          // TODO is there a better name?
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('Performance')),
          BottomNavigationBarItem(
              icon: Icon(Icons.face), title: Text('Profile')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),


    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
