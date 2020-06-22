import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hackweek_4/ui/Authentication/pages/google_sign_in.dart';

class Containersection extends StatelessWidget {
  const Containersection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 208.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 255,
                    width: 255,
                    child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/icon1.png?alt=media&token=22e1c4b0-00b1-4899-91b0-a2c05be3bfab',
                        height: 225,
                        width: 225),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Realtime Event\n     Updates',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 255,
                    width: 255,
                    child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/icon2.png?alt=media&token=9b757204-14a4-4e09-b292-bbabd1b5d0ea',
                        height: 225,
                        width: 225),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Group Discussions',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 225,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent[100].withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 255,
                        width: 255,
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/icon3.png?alt=media&token=b447ae7f-719d-4d03-886f-849a8e0fbc90',
                            height: 225,
                            width: 225),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Faster way to connect\n           Students',
                        style: TextStyle(
                          fontFamily: 'WorkSans-Bold.ttf',
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.tealAccent[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 255,
                    width: 255,
                    child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/icon4.png?alt=media&token=9d7d4ab4-4d48-4abc-b08c-46df5fe21d64',
                        height: 225,
                        width: 225),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '         Bridge between\n Management and Students',
                    style: TextStyle(
                      fontFamily: 'WorkSans-Bold.ttf',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(50),
            ),
            height: 350,
            width: 1200,
            child: Column(
              children: [
                NeumorphicText(
                  '\nOnline Platform To Chat, Post, Discuss',
                  style: NeumorphicStyle(
                    depth: 1,
                    color: Colors.black,
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontFamily: 'WorkSans-Bold.ttf',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                NeumorphicText(
                  'The first Website fully designed to chat, discuss, post your ideas..',
                  style: NeumorphicStyle(
                    depth: 1,
                    color: Colors.grey[500],
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontFamily: 'WorkSans-Regular.ttf',
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => GoogleSignInPage(),
                    ));
                  },
                  child: Container(
                    height: 40.0,
                    width: 200.0,
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'WorkSans-SemiBold.ttf',
                          fontSize: 25,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border:
                            Border.all(color: Color(0xFFFB4C47), width: 1.5)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
