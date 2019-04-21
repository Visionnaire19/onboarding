import 'package:flutter/material.dart';
import 'package:onboarding/values/strings.dart';
import 'package:onboarding/values/styles.dart';

class PresentProgresif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Le Present Progressif'),
    ),
    body: SingleChildScrollView(
    child: Column(
    children: <Widget>[

    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text('Utiliser le present Progressif',
    style: Styles.titles,
    ),
    ),

      Padding(padding: EdgeInsets.only(top: 20.0, left: 8.0),
      child: Text("Le present progressif (present progressive ) est utilisé pour parler d’une action qui se passe au moment ou on parle. Aussi le present progressif peut etre utilise pour parler de l’avenir.\n\n Examplee:\n\n I am not going to school tomorrow.>> Je ne vais pas a l’ecole demain.",
      style: Styles.text,),),

    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text('Conjuguer le present Progressif',
        style: Styles.titles,
      ),
    ),
    ]
    ),
    )
    );
  }
}