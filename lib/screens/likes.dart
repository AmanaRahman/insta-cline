import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: TabBar(
          padding: EdgeInsets.symmetric(
            vertical: 20
          ),
          dividerColor: Colors.black,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          tabs: [
            Tab(
              text: 'Following',
            ),
            Tab(
              text: 'You',
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Following Content'),
            ),
            Center(
              child: Text('Your Content'),
            ),
          ],
        ),
      ),
    );
  }
}
