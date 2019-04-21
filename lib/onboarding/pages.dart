import 'package:flutter/material.dart';

final pages = [
  
  new PageViewModel(
    Colors.red,
      'assets/logo.png',
      'Bienvenue dans NGOMDA\n\n  Welcome to NGOMDA ',
          'Apprenez lAnglais efficacement\n\n    Learn English efficiently',
  'assets/magnifier.png',
  'Skip'),

  new PageViewModel(
    const Color(0xFFFF7043),
    'assets/calendar.png',
    'Exercises journaliers\n\n  Daily trainings',
    '   NGOMDA vous offre une selection dexercises journaliers\n\n   NGOMDA offers you daily trainings to improve your English capabilities',
    'assets/clock.png',
    'Skip'
  ),

  new PageViewModel(
    const Color(0xFF00B8D4),
    'assets/communicate.png',
    '     Eloquence et ecoute\n\n Speaking and Listening skills',
    '   Avec NGOMDA, vous etes capable de participer a des discussions en Anglais\n\n  With NGOMDA, you are able to speak English fluently',
    'assets/discuss.png',
  'Skip'
  ),

  new PageViewModel(
    const Color(0xFF009688),
    'assets/writing.png',
    '     Lecture et ecriture\n\n Reading and Writing skills',
    '   Avec NGOMDA, vous etes capble de lire et ecrire en Anglais\n\n    With NGOMDA, you are able to write and read in English',
    'assets/edit.png',
    'Sign Up'
  )
  
];


class Page extends StatelessWidget{



  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });





  @override
  // TODO: implement hashCode
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
              color: viewModel.color,
              width: double.infinity,


              child: Opacity(
                opacity: percentVisible,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Transform(
                    transform: new Matrix4.translationValues(0.0, 30.0 * (1 - percentVisible), 0.0),

                  child : new Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(viewModel.title,
                        style: new TextStyle(
                          fontFamily: 'Romanica',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),)
                  ),
    ),
                  Transform(
                    transform: new Matrix4.translationValues(0.0, 50.0 * (1 - percentVisible), 0.0),

                  child: new Padding(
                    padding: EdgeInsets.only(bottom: 30.0, top: 25.0),

                    child: Image.asset(
                        viewModel.heroAssetPath,
                      width: 200.0,
                      height: 200.0,),
                  ),
),


                  Padding(
                      padding: EdgeInsets.only( bottom: 50.0),
                      child: Text(viewModel.body,
                        style: new TextStyle(
                          fontFamily: 'Caesar',
                          fontSize: 20.0,
                            color: Colors.white
                        ),)
                  ),
                
                ],

              )
              ),
          );

  }




}
class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;
  final String button;

  PageViewModel(
      this.color,
      this.heroAssetPath,
      this.title,
      this.body,
      this.iconAssetPath,
      this.button,
      );
}