import 'package:flutter/material.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  State<LikeScreen> createState() => _LikeState();
}

List<Users> users = [
  Users(
    name: 'Kareen',
    comment: 'liked your photo.',
    hour: '1h',
    leadingimage: 'assets/girl.jpg',
    title: "Follow Requests",
  ),
  Users(
    name: 'Johnnn,zackz',
    and: 'and',
    others: '26 others',
    comment: 'liked your photo.',
    title: 'Today',
    hour: '1h',
    leadingimage: 'assets/girl.jpg',
  ),
  Users(
    title: 'This Week',
    name: 'craig_love',
    comment: 'mentioned you in a comment:',
    at: '@jacob_w',
    exact: 'Exactly.....',
    hour: '2d',
    leadingimage: 'assets/jacob.jpg',
    follow: true
  ),
  Users(
    name: 'martini_rond',
    comment: 'Started following you.',
    hour: '3d',
    leadingimage: 'assets/tree.jpg',
  ),
  Users(
      name: 'miss_potter',
      comment: 'Started following you.',
      hour: '3d',
      leadingimage: 'assets/gurl.jpg',
      follow: true),
  Users(
    name: 'miss_potter',
    comment: 'Started following you.',
    hour: '3d',
    leadingimage: 'assets/gurl.jpg',
  ),
  Users(
    title: 'This Month',
    name: 'miss_potter',
    comment: 'Started following you.',
    hour: '3d',
    leadingimage: 'assets/gurl.jpg',
  ),
  Users(
    name: 'miss_potter',
    comment: 'Started following you.',
    hour: '3d',
    leadingimage: 'assets/gurl.jpg',
    follow: true
  ),
  Users(
    name: 'miss_potter',
    comment: 'Started following you.',
    hour: '3d',
    leadingimage: 'assets/gurl.jpg',
  ),
];

class _LikeState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 41, 42, 42),
          bottom: const TabBar(
            dividerColor: Colors.white,
            tabs: [
              Tab(
                text: 'Following',
              ),
              Tab(
                text: 'You',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Hello Following ',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Good Morning',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      users[index].title != null
                          ? Text(
                              users[index].title!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          : const SizedBox(),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(users[index].leadingimage),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: users[index].name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  if (users[index].and != null)
                                    TextSpan(
                                      text: ' ${users[index].and}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  if (users[index].others != null)
                                    TextSpan(
                                      text: ' ${users[index].others}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  TextSpan(
                                    text: ' ${users[index].comment}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  if (users[index].at != null)
                                    TextSpan(
                                      text: ' ${users[index].at}',
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 52, 111, 153)),
                                    ),
                                  if (users[index].exact != null)
                                    TextSpan(
                                      text: ' ${users[index].exact}',
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  TextSpan(
                                    text: ' ${users[index].hour}',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: SizedBox(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: users[index].follow == true
                                  ? MaterialStatePropertyAll(Colors.blue)
                                  : MaterialStatePropertyAll(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              users[index].follow ==true
                              ?
                              'Message':'Follow',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Users {
  final String name;
  final String comment;
  final String hour;
  final String leadingimage;
  final String? trailingimage;
  final String? title;
  final String? and;
  final String? others;
  final String? at;
  final String? exact;
  final String? button;
  final bool? follow;

  Users({
    required this.name,
    required this.comment,
    required this.hour,
    required this.leadingimage,
    this.title,
    this.and,
    this.others,
    this.at,
    this.exact,
    this.button,
    this.follow,
    this.trailingimage,
  });
}
