import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  List<dynamic> story = [
    {"images": 'assets/lion.jpeg', "username": "lion"},
    {"images": 'assets/gurl.jpg', "username": "ammu"},
    {"images": 'assets/tree.jpg', "username": "liyas"},
    {"images": 'assets/two.jpg', "username": "asan"},
    {"images": 'assets/rain.jpg', "username": "niya"},
    {"images": 'assets/gurl.jpg', "username": "ammu"},
    {"images": 'assets/tree.jpg', "username": "liyas"},
    {"images": 'assets/two.jpg', "username": "asan"},
    {"images": 'assets/rain.jpg', "username": "niya"},
    
  ];

  Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(story.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(.0),
                  child: Column(
                    children: [
                      Container(
                        width: 67,
                        height: 67,
                        margin: EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color.fromARGB(255, 220, 43, 185), Color(0xFFEEA863)],
                          ),
                        ),
                        child: Container(
                          width: 65,
                          height: 65,
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color.fromARGB(255, 206, 36, 146), Color.fromARGB(255, 198, 89, 30)],
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.black, spreadRadius: 1),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Color.fromARGB(255, 204, 149, 21), spreadRadius: 1),
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('${story[index]["images"]}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${story[index]["username"]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
