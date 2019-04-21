import 'package:flutter/material.dart';
import 'package:onboarding/lessons/LessonsTabBar.dart';

class TabBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            child: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('Lessons'),),
                Tab(child: Text('Games'),),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
           LessonsTabBar()
          ],
        ),
      ),
    );
  }
}