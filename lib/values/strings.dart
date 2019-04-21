import 'package:flutter/material.dart';
import 'package:onboarding/values/styles.dart';

abstract class Strings{
  
  static const Have = Text("Pour parler de la possession , on peut dire <<have>> avoir.\n Examples:\n  He has a yellow pencil. >> Il a un crayon jaune.\n Do you have money? >> Est ce que tu as de l'argent?",
    style: Styles.text,);

  static const Be = Text("Be est employé comme le verbe être comme en français.\n Examples:\nje suis en retard. >> I am late.\nIl est beau. >> He is handsome.\nElle est une enseignante. >> She is a teacher.\nIls sont excellents. >> They are excellent.",
    style: Styles.text,);

  static const Etre = Text("Be parfois ne se traduit ni par avoir ni par être.\nExamples:\nIt is cold. >>Il fait froid.\nIt is hot. >> Il fait chaud.\nI’m John >>Je m’appelle John.\nHow are you? >>Comment vas-tu?",
    style: Styles.text,);

  static const BePassif =  Text("Be est aussi utilisé pour former le passif.\nExample:\nThe cat is chased by the dog. >> Le chat est pourchassé par le chien.",
    style: Styles.text,);
}