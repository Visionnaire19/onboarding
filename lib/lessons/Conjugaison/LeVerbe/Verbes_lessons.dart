import 'package:onboarding/values/styles.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/values/strings.dart';



class ToBe extends StatefulWidget {

  State createState() => ToBeState();
  }

class ToBeState extends State<ToBe> {

  var dividedContentToBe = [
    Column(
      children: <Widget>[
  Padding(
    padding: EdgeInsets.only(top: 30.0, left: 8.0),
    child: Container(
      child: Text("   Comme en français, le verbe to be (être) peut s’employer comme un auxiliaire et/ou un verbe ordinaire. Comme auxiliaire, il est utilisé pour former le present progressif et le prétérit.",
        style: Styles.text,),
    ),
  ),
      ],
    ),
    Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
      child: Text('Conjuguer be au present',
        style: Styles.titles,

      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
      child: SingleChildScrollView(
        child: Table(
            border: TableBorder.all(width: 1.0),

            children: [
              TableRow(
                children: <Widget>[
                  TableCell(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text('Pronoms personnels',
                                style: Styles.tableHeadlines,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Affirmation',
                                style:Styles.tableHeadlines,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Negation',
                                style: Styles.tableHeadlines,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Interrogation',
                                style: Styles.tableHeadlines,),
                            )
                          ],
                        ),
                      )),

                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text('I',
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("I am \n I’m",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("I am not \nI’m not",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Am I?',
                                style: Styles.text,),
                            )
                          ],

                        ),
                      )),
                ],
              ),
              TableRow(
                children: <Widget>[
                  TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text('he/she/it',
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("He is \n he's",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("She is not \n She's not \n She isn't",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Is it?',
                                style: Styles.text,),
                            )
                          ],

                        ),
                      )),
                ],
              ), TableRow(
                children: <Widget>[
                  TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text('we/you/they',
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("we are \n we're",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("You are not \n You're not \n You aren't",
                                style: Styles.text,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('Are they?',
                                style: Styles.text,),
                            )
                          ],

                        ),
                      )),
                ],
              ),
            ]
        ),
      ),
    ),
  ]
    ),
    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text('Conjuguer be au passe',
            style: Styles.titles,),
        ),
        Padding(
          padding:  const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
          child: Table(
              border: TableBorder.all(width: 1.0),
              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('Pronoms personnels',
                              style: Styles.tableHeadlines,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Affirmation',
                              style: Styles.tableHeadlines,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Negation',
                              style: Styles.tableHeadlines,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Interrogation',
                              style: Styles.tableHeadlines,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('I/he/she/it',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("I was",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("He was not \n He wasn't",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Was she?',
                              style: Styles.text,),
                          )
                        ],

                      ),
                    ),
                  ],
                ), TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('we/you/they',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("You were",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("We were not \n We weren't",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Were they?',
                              style: Styles.text,),
                          )
                        ],

                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ],
    ),
    Padding(
      padding:EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Be est employé comme le verbe être comme en français.\n\n Examples:\n\n\nje suis en retard. >> I am late.\n\nIl est beau. >> He is handsome.\n\nElle est une enseignante. >> She is a teacher.\n\nIls sont excellents. >> They are excellent.",
              style: Styles.text,),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Mais parfois be est utilisé la ou on emploie <<avoir>> en francais. <<avoir>> est suivi d’un nom et be d’un adjectif.\n\n Examples:\n\n\nIl a 30 ans. >> He is 30 years old.\n\n Nous avons faim. >> We’re hungry.\n\nAvez-vous peur? Are you afraid?\n\nElle a soif. She’s thirsty.",
              style: Styles.text,),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Be parfois ne se traduit ni par avoir ni par être.\n\nExamples:\n\n\nIt is cold. >>Il fait froid.\n\nIt is hot. >> Il fait chaud.\n\nI’m John >>Je m’appelle John.\n\nHow are you? >>Comment vas-tu?",
              style: Styles.text,),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
  child: SingleChildScrollView(
    child: Column(
          children: <Widget>[
            Container(
              child: Text("There is/ There are",style: Styles.subtitles,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 8.0),
              child: Container(
                child: Text("On les emploie pour dire il ya quelque chose ou quelqu’un. There is est suivi d’un nom singulier. There are est suivi d’un nom pluriel.\n\n Examples:\n\n\nThere are people in the building. >> Il y a des gens dans le bâtiment.\n\nThere is a table here. >> Il y a une table ici.",
    style: Styles.text,),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 8.0),
              child: Container(
                child: Text("There was (nom singulier) et there were (nom pluriel) pour parler du passé.\n\nExample:\n\n\nThere was a car in the garage. >> Il y avait une voiture dans le garage.\n\nThere were three students in this class. >> Il y avait trois étudiants dans cette classe.",
                  style: Styles.text,),
              ),
            ),
          ],
        ),
  ),
    ),


    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Pour l’incertitude",style: Styles.subtitles,),
          ),

          Padding(
            padding:EdgeInsets.only(top: 30.0, left: 8.0),
            child: Container(
              child: Text("Il pourrait y avoir >> There could be\n\nIl devrait y avoir >> There should be\n\n Examples:\n\n\nThere should be more money in my pocket.>> Il devrait y avoir plus d'argent dans ma poche\n\nThere could be aliens in the universe.>> Il pourrait y avoir dea aliens dan l'univers",
                style: Styles.text,),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text("Be peut être employé comme auxiliaire en anglais. Il permet de former le présent et le passé simple en be+ing. Dans ce cas il ne signifi pas <être>.\n\nExamples:\n\n\nThey are preparing their exams. >>Elles sont en train de preparer leurs examens.\n\nShe is preparing her exam.>> Elle est entrain de préparer son examen.",
              style: Styles.text,)
          ),
        ],
      ),
    ),

    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
              child: Text("Be est aussi utilisé pour former le passif.\n\nExample:\n\n\nThe cat is chased by the dog. >> Le chat est pourchassé par le chien.",
                style: Styles.text,),
          ),
        ],
      ),
    ),

    Text('Congratulations. You are done with this lesson. Do you want to move to the quiz?')
  ];

  int _counter = 0;
  bool isVisible=true;
  bool isFinished=false;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if(_counter< dividedContentToBe.length-1){
        _counter++;
      }

    });
    isVisible=false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {

        isVisible = true;
      });
    });

  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if(_counter< dividedContentToBe.length+1){
        _counter = _counter - 1;
      }

    });
    isVisible=false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {

        isVisible = true;
      });
    });

  }


  @override
  Widget build(BuildContext context) {
    if(_counter== dividedContentToBe.length+1){
      setState(() {

        isFinished=true;
      });

    }
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.amber,
        flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            child: Text('To Be', style: TextStyle(fontSize: 32, color: Colors.black, ),)
        ),
      ),
      body: Stack(
        children: <Widget>[

          Column(
      children: <Widget>[



          AnimatedOpacity(
            opacity: isVisible? 1.0:0.0,
            duration: Duration(milliseconds: 0),
            child: dividedContentToBe[_counter],
          ),

          AnimatedOpacity(
            opacity: isFinished? 1.0:0.0,
            duration: Duration(milliseconds: 0),
            child: Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    isFinished?
                    Future.delayed(const Duration(milliseconds: 300), () {

                    }): null;
                  },
                  child: Text('Go back to Menu'),
                ),
                RaisedButton(
                  onPressed: (){
                    isFinished?
                    Future.delayed(const Duration(milliseconds: 300), () {

                    }): null;

                  },
                  child: Text('Go to Quiz'),
                )
              ],
            ),
          ),
Align(
alignment: Alignment.bottomCenter,
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[


      Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: RaisedButton(onPressed: _decrementCounter,
          child: Icon(Icons.arrow_back, color: Colors.amber,),),
      ),

  Padding(
    padding: const EdgeInsets.only(left: 30.0),
    child: RaisedButton(onPressed: _incrementCounter,
    child: Icon(Icons.arrow_forward, color: Colors.amber,),),
  ),

    ],
  ),
)
        ],
          )
        ]
    ),

      );


  }
}


class ToHave extends StatefulWidget {

  State createState() => ToHaveState();
}

class ToHaveState extends State<ToHave> {

  var dividedContentToHave = [

    Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Text('Conjuguer to Have au present',
              style: Styles.titles,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
            child: SingleChildScrollView(
              child: Table(
                  border: TableBorder.all(width: 1.0),

                  children: [
                    TableRow(
                      children: <Widget>[
                        TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Text('I/You/We/They',
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text('Have\n\n(Affirmation)',
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text('Do not have\n\n(Negation)',
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Do I/You/We/They have?\n\n(Interrogation)',
                                      style: Styles.text,),
                                  )
                                ],
                              ),
                            )),

                      ],
                    ),
                  ]
              ),
            ),
          ),
        ]
    ),
    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text('Conjuguer To Have au passe',
            style: Styles.titles,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
          child: Table(
              border: TableBorder.all(width: 1.0),
              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('I/You/We/They',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Had\n\n(Affirmation)',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Did not have\nHadn't\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Did I/You/We/They have?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('He/She/It',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Had\n\n(Affirmation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Did not have\nDidn't have\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Did He/She/It have?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],

                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ],
    ),

    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text('Conjuguer To Have au futur',
            style: Styles.titles,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
          child: Table(
              border: TableBorder.all(width: 1.0),
              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('I/You/He/She/It/We/They',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Will have\n\n(Affirmation))',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Will not have\nHadn't\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Will I/You/We/They have?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

              ]
          ),
        ),
      ],
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[

          Container(
            child: Text(
              " Le verbe to have peut se conjuguer normalement comme le verbe avoir. Il peut aussi être employé comme auxiliaire dans certains temps au passé.\n\nExamples:\n\n\nJ’ai une belle voiture. >> I have a nice car.\n\nElle a une grande maison. >> She has a big house.\n\nThey have a piece of earth in their village. >> Ils ont un morceau de terre dans leur village.",
              style: Styles.text,),
          ),
        ],
      ),

    ),

    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: (Strings.Have),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "Have peut aussi s’employer pour exprimer un souhait.\n\n Examples:\n\n\n Ait une bonne journee >> Have a good day!\n\nPasse du bon temps >> Have a good time.\n\nAmuse toi.  >>  Have fun",
              style: Styles.text,),
          ),
        ],
      ),
    ),


    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Container(
              child: Text( " Have got est utilisé pour dire <avoir, posséder> et s’emploie seulement au present. Aussi Have got se conjugue comme un auxiliaire sans do.\n\n Examples:\n\n\n They have got four cars in their house.  >>  Ils ont quatre voitures dans leur maison",
                style: Styles.text,),
            ),
  ]
  ),
  ),
  ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
              child: Table(
                  border: TableBorder.all(width: 1.0),
                  children: [
                    TableRow(
                      children: <Widget>[
                        TableCell(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('Affirmation',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("Negation",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Text('Interrogation',
                                    style: Styles.text,)),
                              Expanded(
                                  flex: 1,
                                  child: Text("Interro-negative",
                                    style: Styles.text,)),
                            ],
                          ),
                        ),

                      ],
                    ),

                    TableRow(
                      children: <Widget>[
                        TableCell(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('I/You/We/They',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "We have got plenty of time\n\n(Nous avons beaucoup de temps)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "I have not my baccalaureate yet\nI haven't got my baccalaureate yet\n\n(Je n'ai pas encore eu mon baccalaureat.)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Have they got their phones?\n\n(Ont-ils leurs telephones?)',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Have I not got an apple?\nHaven’t I got an apple?\n\n(N’ai je pas une pomme?)",
                                    style: Styles.text,)),
                            ],

                          ),
                        ),
                      ],
                    ),

                    TableRow(
                      children: <Widget>[
                        TableCell(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Text('He/She/It',
                                    style: Styles.text,)),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    'He has got a nice watch.\nHe’s got a nice watch\n\n(Il a une belle montre)',
                                    style: Styles.text,)),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    "She has not got any shoes.\nShe hasn’t got any shoes\n\n(Elle n'a pas de chaussures)",
                                    style: Styles.text,)),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Has she got shoes?\n (A t-elle des chaussures?)',
                                    style: Styles.text,)),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Has he not got a watch?\n Hasn’t he got a watch?\n (N'a t-il pas une montre?)",
                                    style: Styles.text,)),

                            ],

                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          

    Text(
        'Congratulations. You are done with this lesson. Do you want to move to the quiz?')
  ];

  int _counter = 0;
  bool isVisible = true;
  bool isFinished = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter < dividedContentToHave.length - 1) {
        _counter++;
      }
    });
    isVisible = false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter < dividedContentToHave.length + 1) {
        _counter = _counter - 1;
      }
    });
    isVisible = false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isVisible = true;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    if (_counter == dividedContentToHave.length + 1) {
      setState(() {
        isFinished = true;
      });
    }
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.amber,
        flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'To Be', style: TextStyle(fontSize: 32, color: Colors.black,),)
        ),
      ),
      body: Stack(
          children: <Widget>[

            SingleChildScrollView(
              child: Column(
                children: <Widget>[


                  
                    AnimatedOpacity(
                      opacity: isVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 0),
                      child: dividedContentToHave[_counter],
                    ),
              

                  AnimatedOpacity(
                    opacity: isFinished ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            isFinished ?
                            Future.delayed(const Duration(milliseconds: 300), () {

                            }) : null;
                          },
                          child: Text('Go back to Menu'),
                        ),
                        RaisedButton(
                          onPressed: () {
                            isFinished ?
                            Future.delayed(const Duration(milliseconds: 300), () {

                            }) : null;
                          },
                          child: Text('Go to Quiz'),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: RaisedButton(onPressed: _decrementCounter,
                            child: Icon(Icons.arrow_back, color: Colors.amber,),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: RaisedButton(onPressed: _incrementCounter,
                            child: Icon(
                              Icons.arrow_forward, color: Colors.amber,),),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ]
      ),

    );
  }


}


class ToDo2 extends StatefulWidget {

  State createState() => ToDoState();
}

class ToDoState extends State<ToDo2> {

  var dividedContentToDo = [

    Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Text('Conjuguer to Do au present',
              style: Styles.titles,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
            child: SingleChildScrollView(
              child: Table(
                  border: TableBorder.all(width: 1.0),

                  children: [
                    TableRow(
                      children: <Widget>[
                        TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Text('I/You/We/They',
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text('Do\n\n(Affirmation)',
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("Do not\nDon't\n\n(Negation)",
                                      style: Styles.text,),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'Do I/You/We/They do?\n\n(Interrogation)',
                                      style: Styles.text,),
                                  )
                                ],
                              ),
                            )),

                      ],
                    ),
                    TableRow(
                        children: [
                          TableCell(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Text('He/She/It',
                                        style: Styles.text,)),
                                  Expanded(
                                      flex: 1,
                                      child: Text('does\n\n(Affirmation)',
                                        style: Styles.text,)),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Does not do\nDoesn't have\n\n(Negation)",
                                        style: Styles.text,)),
                                  Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Does He/She/It do?\n\n(Interrogation)',
                                        style: Styles.text,)),
                                ],
                              ))

                        ]
                    ),


                  ]
              ),
            ),
          ),
        ]
    ),
    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text('Conjuguer To Do au passe',
            style: Styles.titles,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
          child: Table(
              border: TableBorder.all(width: 1.0),
              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('I/You/We/They',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Did\nHave done\n\n(Affirmation)',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Did not do\nHaven't done\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Did I/You/We/They do?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('He/She/It',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Did\n\n(Affirmation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Did not do\nDidn't do\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Did He/She/It do?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],

                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ],
    ),

    Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text('Conjuguer To Do au futur',
            style: Styles.titles,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
          child: Table(
              border: TableBorder.all(width: 1.0),
              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('I/You/He/She/It/We/They',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('Will do\n\n(Affirmation))',
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Will not do\nWon't do\n\n(Negation)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Will I/You/We/They do?\n\n(Interrogation)',
                              style: Styles.text,),
                          )
                        ],
                      ),
                    ),

                  ],
                ),

              ]
          ),
        ),
      ],
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[

          Container(
            child: Text(
              "Comme un verbe, Do se traduit par <<faire>>. Mais la pluspart du temps, do est un auxiliare utilise dans les interrogations, et les negations.",
              style: Styles.text,),
          ),
        ],
      ),

    ),

    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
        Text("Employer l'auxiliaire Do",
        style: Styles.titles,
      ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Present",
            style: Styles.titles,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0, left: 8.0),
          child: Text("Dans les negations, la structure d’utilisation de do est <<do+not+verbe>>. Dans les interrogations, la structure est <<do+ sujet+ verbe>>.",
            style: Styles.text,),),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Table(
              border: TableBorder.all(width: 1.0),

              children: [
                TableRow(
                  children: <Widget>[
                    TableCell(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('Pronoms personnels',
                                  style: Styles.tableHeadlines,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('Affirmation',
                                  style:Styles.tableHeadlines,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('Negation',
                                  style: Styles.tableHeadlines,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text('Interrogation',
                                  style: Styles.tableHeadlines,),
                              )
                            ],
                          ),
                        )),

                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('I/We/You/They',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("I eat an apple.\n\n(Je mange une pomme.)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                  child: Text("They do not eat apples.\nThey don’t eat apples.\n\n(Elles ne mangent pas des pommes)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("Do you eat apples?\n\n(Mangez-vous des pommes?)",
                                  style: Styles.text,),
                              )
                            ],

                          ),
                        )),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text('He/She/It',
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("She eats an apple.\n\n(Elle mange une pomme.)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("He does not eat an apple.\nHe doesn’t eat apples.\n\n(Il ne mange pas une pomme.)",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("Does she eat an apple?\n\n(Mange-t-elle une pomme?)",
                                  style: Styles.text,),
                              )
                            ],

                          ),
                        )),
                  ],
                ),

              ]
          ),
        ],
      ),
    ),


    Padding(
      padding: EdgeInsets.only(top: 30.0, left: 8.0),
      child: SingleChildScrollView(
        child: Column(
            children: <Widget>[

              Container(
                child: Text( "",
                  style: Styles.text,),
              ),
            ]
        ),
      ),
    ),

    Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
      child: Table(
          border: TableBorder.all(width: 1.0),
          children: [
            TableRow(
              children: <Widget>[
                TableCell(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text('',
                          style: Styles.text,),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text('Affirmation',
                          style: Styles.text,),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("Negation",
                          style: Styles.text,),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Interrogation',
                            style: Styles.text,)),
                      Expanded(
                          flex: 1,
                          child: Text("Interro-negative",
                            style: Styles.text,)),
                    ],
                  ),
                ),

              ],
            ),

            TableRow(
              children: <Widget>[
                TableCell(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text('I/You/We/They',
                          style: Styles.text,),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "We have got plenty of time\n\n(Nous avons beaucoup de temps)",
                          style: Styles.text,),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          "I have not my baccalaureate yet\nI haven't got my baccalaureate yet\n\n(Je n'ai pas encore eu mon baccalaureat.)",
                          style: Styles.text,),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Have they got their phones?\n\n(Ont-ils leurs telephones?)',
                          style: Styles.text,),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Have I not got an apple?\nHaven’t I got an apple?\n\n(N’ai je pas une pomme?)",
                            style: Styles.text,)),
                    ],

                  ),
                ),
              ],
            ),

            TableRow(
              children: <Widget>[
                TableCell(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Text('He/She/It',
                            style: Styles.text,)),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'He has got a nice watch.\nHe’s got a nice watch\n\n(Il a une belle montre)',
                            style: Styles.text,)),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "She has not got any shoes.\nShe hasn’t got any shoes\n\n(Elle n'a pas de chaussures)",
                            style: Styles.text,)),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Has she got shoes?\n (A t-elle des chaussures?)',
                            style: Styles.text,)),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Has he not got a watch?\n Hasn’t he got a watch?\n (N'a t-il pas une montre?)",
                            style: Styles.text,)),

                    ],

                  ),
                ),
              ],
            ),
          ]
      ),
    ),


    Text(
        'Congratulations. You are done with this lesson. Do you want to move to the quiz?')
  ];

  int _counter = 0;
  bool isVisible = true;
  bool isFinished = false;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter < dividedContentToDo.length - 1) {
        _counter++;
      }
    });
    isVisible = false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter < dividedContentToDo.length + 1) {
        _counter = _counter - 1;
      }
    });
    isVisible = false;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isVisible = true;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    if (_counter == dividedContentToDo.length + 1) {
      setState(() {
        isFinished = true;
      });
    }
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.amber,
        flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'To Be', style: TextStyle(fontSize: 32, color: Colors.black,),)
        ),
      ),
      body: Stack(
          children: <Widget>[

            SingleChildScrollView(
              child: Column(
                children: <Widget>[



                  AnimatedOpacity(
                    opacity: isVisible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 0),
                    child: dividedContentToDo[_counter],
                  ),


                  AnimatedOpacity(
                    opacity: isFinished ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 0),
                    child: Row(
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            isFinished ?
                            Future.delayed(const Duration(milliseconds: 300), () {

                            }) : null;
                          },
                          child: Text('Go back to Menu'),
                        ),
                        RaisedButton(
                          onPressed: () {
                            isFinished ?
                            Future.delayed(const Duration(milliseconds: 300), () {

                            }) : null;
                          },
                          child: Text('Go to Quiz'),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[


                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: RaisedButton(onPressed: _decrementCounter,
                            child: Icon(Icons.arrow_back, color: Colors.amber,),),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: RaisedButton(onPressed: _incrementCounter,
                            child: Icon(
                              Icons.arrow_forward, color: Colors.amber,),),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ]
      ),

    );
  }


}
