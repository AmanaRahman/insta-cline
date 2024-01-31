import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black,
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              padding:EdgeInsets.zero,
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/girl.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/water.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                    child: Image.asset(
                    'assets/peak.jpg',
                    fit: BoxFit.cover,
                  ),                ),
                   Card(
                    margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/girl.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/water.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                    child: Image.asset(
                    'assets/peak.jpg',
                    fit: BoxFit.cover,
                  ),                ),
                   Card(
                    margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/girl.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/water.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                    child: Image.asset(
                    'assets/peak.jpg',
                    fit: BoxFit.cover,
                  ),                ),
                 Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/girl.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/water.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  margin: EdgeInsets.zero,
                    child: Image.asset(
                    'assets/peak.jpg',
                    fit: BoxFit.cover,
                  ),                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
