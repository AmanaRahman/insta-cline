import 'package:flutter/material.dart';

class PostCart extends StatelessWidget {
  final Key? key;

  const PostCart({this.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage('assets/lion.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                'Amana_Rahman',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'india',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Container(
              height: 300,
              child: PageView(
                children: [
                  Image.asset(
                    'assets/lion.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/flower.jpg',
                    fit: BoxFit.cover,
                  ),
                  // Add more images as needed
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/Shape.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/Comment.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/Messanger.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(
                  width: 63,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/ovals.png",
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 115,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/Saves.png",
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/Oval.png",
                ),
              ),
              title: Text(
                'Liked by Nubl_Rahman and 4,90,000 ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Amana_Rahman  The game in the forest is amazing and I wanna share some photos',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
