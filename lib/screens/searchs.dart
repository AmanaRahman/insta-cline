import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/explore.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black, 
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top), 
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextField(
                        controller: _searchController,
                        cursorColor: Color.fromARGB(255, 91, 89, 89),
                        decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 42, 41, 41),
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(5),
                            child: Image.asset('assets/search.png'),
                            width: 18,
                            height: 5,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.qr_code_scanner_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/igtvv.png",
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'IGTV',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/shop.png",
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Shop',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Style',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Audio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Explore(),
          ),
        ],
      ),
    );
  }
}


