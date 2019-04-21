import 'package:flutter/material.dart';
import 'package:onboarding/lessons/lessons_grammar.dart';
import 'package:onboarding/lessons/lessons_vocabulary.dart';
import 'package:onboarding/lessons/Conjugaison/lessons_conjugaison.dart';

class LessonsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('Grammaire'),),
                Tab(child: Text('Vocabulaire'),),
                Tab(child: Text('Conjugaison'),),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Grammar(),
            Vocabulary(),
            LessonsActivity(),
          ],
        ),
      ),
    );
  }
  }