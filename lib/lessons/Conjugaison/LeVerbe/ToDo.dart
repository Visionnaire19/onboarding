import 'package:flutter/material.dart';
import 'package:onboarding/values/strings.dart';
import 'package:onboarding/values/styles.dart';

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('To Do'),
        ),
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Conjuguer Do au present',
                      style: Styles.titles,
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Table(
                      border: TableBorder.all(width: 1.0),
                      children: [
                        TableRow(
                            children: [
                              TableCell(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          flex: 1,
                                          child: Text('I/You/We/They',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text('Do\n(Affirmation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text('Do not do\n(Negation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Do I/You/We/They do?\n (Interrogation)',
                                            style: Styles.text,)),
                                    ],
                                  ))

                            ]
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
                                          child: Text('does\n(Affirmation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Does not do\n Doesn't have\n(Negation)",
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Does He/She/It do?\n (Interrogation)',
                                            style: Styles.text,)),
                                    ],
                                  ))

                            ]
                        ),
                      ],
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Conjuguer Do au Passe',
                      style: Styles.titles,
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Table(
                      border: TableBorder.all(width: 1.0),
                      children: [
                        TableRow(
                            children: [
                              TableCell(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          flex: 1,
                                          child: Text('I/You/We/They',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text('Did\n Have done\n(Affirmation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Did not do\n Haven't done\n (Negation)",
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Did I/You/We/They do?\n (Interrogation)',
                                            style: Styles.text,)),
                                    ],
                                  ))

                            ]
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
                                          child: Text('Did\n(Affirmation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Did not do\n Didn't have\n(Negation)",
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Did He/She/It do?\n (Interrogation)',
                                            style: Styles.text,)),
                                    ],
                                  ))

                            ]
                        ),
                      ],
                    ),),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Conjuguer Do au Futur',
                      style: Styles.titles,
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Table(
                      border: TableBorder.all(width: 1.0),
                      children: [
                        TableRow(
                            children: [
                              TableCell(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          flex: 1,
                                          child: Text('I/You/He/She/It/We/They',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Will do\n(Affirmation)',
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Will not do\n (Negation)",
                                            style: Styles.text,)),
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            'Will I/You/He/She/It/We/They do?\n (Interrogation)',
                                            style: Styles.text,)),
                                    ],
                                  )),

                            ]
                        ),

                      ],
                    ),),
                  
                  Padding(
                    padding: EdgeInsets.only(top:20.0, left: 10.0),
                    child: Text("Comme un verbe, Do se traduit par <<faire>>. Mais la pluspart du temps, do est un auxiliare utilise dans les interrogations, et les negations.",
                    style: Styles.text,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Employer l'auxiliaire Do",
                      style: Styles.titles,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Present",
                      style: Styles.titles,
                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 10.0),
                  child: Text("Dans les negations, la structure d’utilisation de do est <<do+not+verbe>>. Dans les interrogations, la structure est <<do+ sujet+ verbe>>.",
                  style: Styles.text,),),

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
                            child: Text("I eat an apple.\n (Je mange une pomme.)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("They do not eat apples.\n They don’t eat apples.\n (Elles ne mangent pas des pommes)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Do you eat apples?\n (Mangez-vous des pommes?)",
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
                            child: Text("She eats an apple.\n (Elle mange une pomme.)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("He does not eat an apple./ He doesn’t eat apples.\n (Il ne mange pas une pomme.)",
                              style: Styles.text,),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("Does she eat an apple?\n (Mange-t-elle une pomme?)",
                              style: Styles.text,),
                          )
                        ],

                      ),
                    )),
              ],
            ),

          ]
      ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0, top: 30.0),
                    child: Text("Preterit",
                      style: Styles.titles,
                    ),
                  ),

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
                                        child: Text("I ate an apple.\n (J'ai mange une pomme.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("They did not eat apples.\n They didn’t eat apples.\n (Ils n'ont pas mange pas de pommes)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("Did you eat apples?\n (Avez-vous mange des pommes?)",
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
                                        child: Text("She ate an apple.\n (Elle a mange une pomme.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("He did not eat apples./ He didn’t eat apples.\n (Il n'a pas mange de pommes.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("Did she eat an apple?\n (A t-elle mange une pomme?)",
                                          style: Styles.text,),
                                      )
                                    ],

                                  ),
                                )),
                          ],
                        ),

                      ]
                  ),

                  Padding(padding: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Text("En anglais, on utilise do pour insister sur ce que l’on dit. On parle de l’emploi <<emphatique>> de do et dans ce cas do est accentue a l’oral.\n Examples:\n I worked to get this job. (J’ai travaille pour obtenir ce poste.)\n I did work to get this job. (J’ai beaucoup travaille pour obtenir ce poste.)",
                  style: Styles.text,),),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Do comme verbe',
                      style: Styles.titles,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 20.0),
                  child: Text("Do peut aussi etre employe comme un verbe qui signifie <<faire>>.",
                  style: Styles.text,),),

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
                                        child: Text('I/We/You/They\n (Present)',
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("They do their homeworks.\n (Ils font leurs devoirs.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("You do not do your homeworks.\n You don’t do your homeworks.\n (Tu ne fait pas tes devoirs)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("Do we do our howeworks?\n (Est-ce-que nous faisons nos devoirs?)",
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
                                        child: Text('He/She/It\n (Preterit)',
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("He did his homework.\n (Il fait ses devoirs.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("She did not do her homeworks.\n (Elle ne fait pas ses devoirs.)",
                                          style: Styles.text,),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text("Did he do his homeworks?\n (Est-ce qu’il fait ses devoirs?)",
                                          style: Styles.text,),
                                      )
                                    ],

                                  ),
                                )),
                          ],
                        ),

                      ]
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0, left: 10.0),
                  child: Text(" Dans certaines circonstances, <<faire>> se traduit par <<make>> en anglais. Il faut donc faire la différence. To do est utilisee pour les travaux et taches. To make est surtout utilise pour la creation, construction, production.\n\n Examples:",
                  style: Styles.text,),),


                  Table(
                    border: TableBorder.all(width: 1.0),
                    children: [
                      TableRow(
                        children: [
                          TableCell(child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text("To do exercises\n Faire des exercices",
                                  style: Styles.text,),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text("To make a cake\n Faire un gateau ",
                                  style: Styles.text,),
                              ),
                            ],
                          ))
                        ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text("To do shopping\n Faire les courses",
                                    style: Styles.text,),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text("To make a suggestion\n Faire une suggestion",
                                    style: Styles.text,),
                                ),
                              ],
                            ))
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text("To do one's best\n Faire de son mieux",
                                    style: Styles.text,),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text("To make a profit\n Faire un benefice",
                                    style: Styles.text,),
                                ),
                              ],
                            ))
                          ]
                      ),

                      TableRow(
                          children: [
                            TableCell(child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text("To do a work\n Faire un travail",
                                    style: Styles.text,),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text("To make noise\n Faire du bruit ",
                                    style: Styles.text,),
                                ),
                              ],
                            ))
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text("To do a chore\n Faire une corvee",
                                    style: Styles.text,),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text("To make a mistake\n Faire une erreur",
                                    style: Styles.text,),
                                ),
                              ],
                            ))
                          ]
                      ),
                    ],
                  )
      ]
    )
    )
    );
  }
  }