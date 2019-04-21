import 'package:flutter/material.dart';
import 'package:onboarding/values/strings.dart';
import 'package:onboarding/values/styles.dart';

class Present extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Le Present'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Utiliser le present simple',
                style: Styles.titles,
              ),
            ),
            
            
            
            

            Padding(padding: EdgeInsets.only(top: 20.0, left: 8.0),
            child: Text("  Nous utilisons le present pour decrire des actions qui se passent presentement ou des verites generales (Ex: Le soleil se leve a l’Est).  Le present est aussi utilise pour decrire des habitudes.\n\n Le present simple se conjugue en combinant le sujet et le verbe sans to-\n\n Examples:\n\n  Le present simple se conjugue en combinant le sujet et le verbe sans to-",
            style: Styles.text,),),

            Padding(padding: EdgeInsets.only(top: 20.0, left: 8.0),
              child: Text("On utilise le present simple souvent avec des adverbes always (toujours), never (jamais), sometimes (parfois), often (souvent), usually (d’habitude).\n\n Examples:\n\n   I always do my homeworks. (Je fais toujours mes exercices de maison.)\n  Sometimes, he is rude. (Parfois, il est tres dur).",
                style: Styles.text,),),

            Padding(padding: EdgeInsets.only(top: 10.0, left: 8.0),
            child: Text("On emploi aussi le present pour parler d’une situation permanente: He lives in Boston. (Il vit a Boston.)\n\n  On l’emploie aussi pour exprimer un gout, une volonte, une opinion:I like playing football. (J’aime jouer au ballon.),  They want to be leaders. (Ils veulent devenir des leaders).,  I believe that he complains a lot. (Je pense qu’il se plaint beaucoup."),),
            
            Padding(padding: EdgeInsets.only(top: 10.0,left: 8.0),
            child: Text(" A la forme negative, le present se conjuguant en combinant le sujet, do not et le verbe si le sujet est I, you ou we.  Mais si le sujet est la 3e personne du singulier (He, She, It), nous combinons le sujet, does not(doesn’t) and the verb.\n\n Examples:\n\n  I do not go to this party>>Je ne vais pas a cette fete.\n She does not know me>> Elle ne me connait pas.\n  We don’t eat meat>> Nous ne mangeons pas la viande.\n He doesn’t play soccer>> Il ne joue pas au football"),),

      Padding(padding: EdgeInsets.only(top: 10.0,left: 8.0),
        child: Text(" A la forme interrogative, on commence par do ou does puis on ajoute le sujet et le verbe.\n\n Examples:\n\n Do you eat an apple? (Est-ce que tu mange une pomme?)\n Does he go to school? (Va-til a l’ecole?)"),),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Orthographe et prononciation du présent simple a la 3eme personne du singulier',
                style: Styles.titles,
              ),),

      
      Padding(padding: EdgeInsets.only(top: 10.0,left: 8.0),
      child: Text(" Les verbes a la 3e personne du singulier (He/She/It) se terminent par -s,-x,-ch, -sh, -o, ou-es.\n\n Examples:\n\n  to teach(Enseigner) >> He teaches(Il enseigne)\n  To catch(Attraper) >> She catches(Elle attrape)\n To go(Aller) >> it goes\n To miss(rater) >> He misses(Il rate)",
      style: Styles.text,),),
      
      Padding(padding: EdgeInsets.only(top: 10.0,left: 8.0),
      child: Text("Pour les verbes qui se terminent avec -y, la terminaison a la 3eme personne du singulier est -ies\n\n  Examples:\n\n To study(Etudier)>> She studies(Elle etudie)\n  To carry(Porter)>> She carries(Elle porte)\n\n\n  Mais il ya aussi des exceptions: to play(Jouer) >> He plays(Il joue), To say(Dire) >> She says(Elle dit)."),),
      

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('Examples',
          style: Styles.titles,
        ),
      ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('To Eat',
                style: Styles.subtitles,
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 10.0),
              child: Table(
                border: TableBorder.all(width: 1.0),
                children: [
                  TableRow(
                    children: [
                      TableCell(child:
                      Row(
                        children: <Widget>[
Expanded(
  flex: 1,
    child: Text("I/You/We",
    style: Styles.text,)),
Expanded(
    flex: 1,
    child: Text("eats\n (Affirmation)",
      style: Styles.text,)),
Expanded(
    flex: 1,
    child: Text("Do not(don’t) eat\n (negation)",
      style: Styles.text,)),
Expanded(
    flex: 1,
    child: Text("Do I/You/We eat\n (Interrogation)",
      style: Styles.text,)),
                        ],
                      ))
                    ]
                  ),

                  TableRow(
                      children: [
                        TableCell(child:
                        Row(
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Text("He/She/It",
                                  style: Styles.text,)),
                            Expanded(
                                flex: 1,
                                child: Text("eats\n (Affirmation)",
                                  style: Styles.text,)),
                            Expanded(
                                flex: 1,
                                child: Text("Does not(doesn’t) eat\n (negation)",
                                  style: Styles.text,)),
                            Expanded(
                                flex: 1,
                                child: Text("Does He/She/It eat\n (Interrogation)",
                                  style: Styles.text,)),
                          ],
                        ))
                      ]
                  ),

                ],
              ) ,)
            
          ],
        ),
      )
    );
  }
}