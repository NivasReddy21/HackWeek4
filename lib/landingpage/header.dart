import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'Navbar.dart';

class Headersection extends StatelessWidget {
  const Headersection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          DesktopNavbar(),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: NeumorphicText(
              'Online Platform To Chat, Post, Discuss',
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
          ),
          SizedBox(
            height: 30,
          ),
          NeumorphicText(
            'The first Website fully designed to chat, discuss, post your ideas for MEC..',
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
            height: 30,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 75.0),
          //   child: Container(
          //     height: 50,
          //     width: 300,
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //         labelText: 'Your email',
          //         fillColor: Colors.grey[200],
          //         icon: Icon(Icons.email),
          //         contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          //         border: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/headerimg.jpg?alt=media&token=fb112109-2fd7-4923-9c21-843fdedd561f'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: NeumorphicText(
              'A unified space for your daily discussions',
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
          ),
          SizedBox(
            height: 30,
          ),
          NeumorphicText(
            'Fusion provides all the features needed of Social-Media..\nFirst Social Media Website of',
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
          InkWell(
            onTap: () {},
            child: NeumorphicText(
              'Mahindra Ecole Centrale',
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
          ),
        ],
      ),
    );
  }
}