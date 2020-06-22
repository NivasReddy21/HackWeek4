import 'package:flutter/material.dart';

class Footersection extends StatelessWidget {
  const Footersection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Colors.purple[50],
            Colors.purple[50],
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      height: 250,
      width: 2000,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 200.0, top: 35),
                child: Column(
                  children: [
                    Text(
                      'Fusion',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WorkSans-Bold.ttf',
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 175.0),
              //   child: Row(
              //     children: <Widget>[
              //       Column(
              //         children: [
              //           Text(
              //             'LINKS',
              //             style: TextStyle(
              //               color: Color(0xFF035755),
              //             ),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 20,
              //           ),
              //           Text(
              //             'Home',
              //             style: TextStyle(color: Colors.black),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('About Us'),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('Blog'),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('Contact Us'),
              //         ],
              //       ),
              //       SizedBox(
              //         width: 80,
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             'SUPPORT',
              //             style: TextStyle(
              //               color: Color(0xFF035755),
              //             ),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 20,
              //           ),
              //           Text(
              //             '24/7 Support',
              //             style: TextStyle(color: Colors.black),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('Support engineers'),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('Site map'),
              //           SizedBox(
              //             height: 15,
              //           ),
              //           Text('FAQ'),
              //         ],
              //       ),
              //       SizedBox(
              //         width: 80,
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             'CONTACT',
              //             style: TextStyle(
              //               color: Color(0xFF035755),
              //             ),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 20,
              //           ),
              //           Text(
              //             '3rd floor, indiana heights,\nSubid Bazar,Sylhet-3100',
              //             style: TextStyle(color: Colors.black),
              //             textAlign: TextAlign.start,
              //           ),
              //           SizedBox(
              //             height: 30,
              //           ),
              //           Image.asset('assets/imgs/socialnt.png')
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 140.0),
          Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Colors.black,
                  Colors.red,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            width: 1250.0,
            height: 1.0,
            // curve: Curves.easeInOut,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 175.0),
                child: Text(
                  'Terms of Services',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Privacy Policies',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Flutter',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'MEC',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 600,
              ),
              Text(
                'All rights reserved @FUSION 2020',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}