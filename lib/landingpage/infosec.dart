import 'package:flutter/material.dart';

class Infosec extends StatelessWidget {
  const Infosec({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.network(
            'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/isometric_city.png?alt=media&token=1776f5eb-8f9c-4475-b183-283ae3eca858',
            width: 800),
        SizedBox(
          width: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/one.png?alt=media&token=a2ad9ab6-6276-4fff-962e-1783d8db4428'),
                SizedBox(width: 50),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '   DISCUSSIONS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          shadows: [
                            Shadow(
                                offset: Offset(3, 3),
                                color: Colors.black38,
                                blurRadius: 10),
                            Shadow(
                                offset: Offset(-3, -3),
                                color: Colors.white.withOpacity(0.85),
                                blurRadius: 10)
                          ],
                          color: Colors.grey.shade300),
                    ),
                  ),
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.black38,
                          blurRadius: 20),
                      BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white.withOpacity(0.85),
                          blurRadius: 20)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/two.png?alt=media&token=689ed8bf-3095-4847-9e34-fad59b5d0fdd'),
                SizedBox(width: 50),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '          FEED',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          shadows: [
                            Shadow(
                                offset: Offset(3, 3),
                                color: Colors.black38,
                                blurRadius: 10),
                            Shadow(
                                offset: Offset(-3, -3),
                                color: Colors.white.withOpacity(0.85),
                                blurRadius: 10)
                          ],
                          color: Colors.grey.shade300),
                    ),
                  ),
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.black38,
                          blurRadius: 20),
                      BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white.withOpacity(0.85),
                          blurRadius: 20)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fusion-an.appspot.com/o/three.png?alt=media&token=e6c4430e-d490-4ecb-83c0-acf879d31f9e'),
                SizedBox(width: 50),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '       PROFILE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          shadows: [
                            Shadow(
                                offset: Offset(3, 3),
                                color: Colors.black38,
                                blurRadius: 10),
                            Shadow(
                                offset: Offset(-3, -3),
                                color: Colors.white.withOpacity(0.85),
                                blurRadius: 10)
                          ],
                          color: Colors.grey.shade300),
                    ),
                  ),
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.black38,
                          blurRadius: 20),
                      BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white.withOpacity(0.85),
                          blurRadius: 20)
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}