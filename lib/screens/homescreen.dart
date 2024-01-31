import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/story.dart';
import 'package:flutter_application_5/screens/post.dart'; 
// import 'package:flutter_application_5/search.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/Camera.png",
          ),
        ),
        actions: <Widget>[
          Image.asset('assets/IGTV.png', fit: BoxFit.contain, height: 32),
          Container(
            padding: const EdgeInsets.all(8.0),
          ),
          Image.asset('assets/Messanger.png', fit: BoxFit.contain, height: 32),
          Container(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
        title: Image.asset(
          "assets/logo.png",
          width: 120,
          height: 50,
        ),
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Story(),
        ),
      ),
      backgroundColor: Colors.black,
      body: PostCart(), 
          );
  
  }
}
