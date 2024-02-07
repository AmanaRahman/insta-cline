import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_5/screens/mainscreen.dart';

class Signin extends StatelessWidget {
  const Signin ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:40, left: 0),
              child: SizedBox(
                child: Image.asset(
                  'assets/logo.png',
                  width: 182,
                  height: 49,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 64, left: 0),
              width: 343,
              height: 340,
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SF pro',
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: 'username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        fontFamily: 'SF pro',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height:10,width:106,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        ' Forgot password?',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: 343,
                      height: 44,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                             MaterialPageRoute(builder:((context) => const MainScreen()
                             )
                           )
                         );
                       },
                        // ignore: sort_child_properties_last
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontFamily: 'SF pro',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)
                          ),
                                                    
                          ),
                        ),
                      ),
                    ),              
                  const SizedBox(height:10),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Image.asset(
                                'assets/facebook.png',
                                width: 20,
                                height: 20,
                              ),
                              alignment: PlaceholderAlignment.middle,
                            ),
                            const WidgetSpan(
                            child:  SizedBox(width:8),
                            alignment: PlaceholderAlignment.middle,
                            ),
                              const TextSpan(
                              text: 'Log in with Facebook',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment:Alignment.bottomCenter,
              child: Text(
                'Or',
                style: TextStyle(
                  fontFamily: 'SF pro',
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
             const SizedBox(height:20,width:209,),
             Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  
                },
                child: RichText(text:
                const TextSpan(
                   style: TextStyle(
                    fontFamily: 'SF pro',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(text: 'dont have an account?',style: TextStyle(color: Colors.grey)),
                    TextSpan(
                      text: ' Signup',
                      style: TextStyle(
                        fontFamily: 'SF pro',
                        fontSize: 14,
                        color: Colors.blue,
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 100,width: 144,),
            const Align(
              alignment:Alignment.bottomCenter,
              child: Text(
                'Instagram from Facebook',
                style: TextStyle(
                  fontFamily: 'SF pro',
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            ],
          ),
        ),
  );
}
}
